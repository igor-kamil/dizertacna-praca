#!/usr/bin/env python3
"""
Generate a bar chart of 'Reasons' frequency from data/participants-atlas-remix-demo.csv.

Input CSV columns:
  "Reasons" (comma-separated tags)
  "Diptych Count" (optional, for title stats)

Output:
  SVG file (default: figures/fig-7-8-hajovna-reasons-frequency.svg)
"""

from __future__ import annotations

import argparse
from pathlib import Path
import unicodedata

import pandas as pd
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# Set font preference
plt.rcParams["font.family"] = ["Setup Serif", "serif"]
plt.rcParams["svg.fonttype"] = "none"


def normalize_tag(tag: str) -> str:
    """
    Map raw tag string to canonical Slovak category.
    """
    # Normalize unicode characters to decompose accents for easier searching if needed,
    # but here we'll just lowercase and check strings directly as requested.
    t = tag.lower().strip()
    
    # Mapping logic
    if "farba" in t or "tón" in t or "ton" in t:
        return "Farba"
    if "tvar" in t or "silueta" in t:
        return "Tvar"
    if "textura" in t or "textúra" in t or "povrch" in t:
        return "Textúra"
    if "atmosfera" in t or "nálada" in t or "nalada" in t:
        return "Nálada"
    if "motív" in t or "motiv" in t:
        return "Motív"
    if "kontrast" in t:
        return "Kontrast"
    if "spomienka" in t:
        return "Spomienka"
    if "miesto" in t:
        return "Miesto"
    if "práca" in t or "praca" in t:
        return "Práca"
    if "kompozícia" in t or "kompozicia" in t or "rozloženie" in t or "rozlozenie" in t:
        return "Kompozícia"
    if "nahoda" in t or "náhoda" in t or "serendipita" in t:
        return "Serendipita"
    
    return "Iné"


def read_data(path: Path) -> pd.DataFrame:
    df = pd.read_csv(path)
    if "Reasons" not in df.columns:
        raise ValueError("Input CSV must contain column 'Reasons'.")
    
    # Drop fully empty rows
    df = df.dropna(how="all")
    
    # Coerce numeric column if present
    if "Diptych Count" in df.columns:
        df["Diptych Count"] = pd.to_numeric(df["Diptych Count"], errors="coerce")
        
    return df


def extract_reasons(df: pd.DataFrame) -> pd.Series:
    """
    Parse 'Reasons' column, split by comma, normalize, and return value counts.
    """
    all_tags = []
    
    # Filter out NaNs in Reasons
    reasons_series = df["Reasons"].dropna()
    
    for entry in reasons_series:
        if not isinstance(entry, str):
            continue
            
        # Split by comma
        tags = entry.split(',')
        for tag in tags:
            tag = tag.strip()
            if not tag:
                continue
            canonical = normalize_tag(tag)
            all_tags.append(canonical)
            
    return pd.Series(all_tags).value_counts()


def plot_reasons(counts: pd.Series) -> plt.Figure:
    fig, ax = plt.subplots(figsize=(7.0, 4.8))
    
    # Sort descending (largest at top for barh means we plot them in reverse order of magnitude 
    # if we use simple barh logic with range, but pandas plot(kind='barh') puts 
    # the first item at the bottom by default.
    # To have largest at TOP, we should sort ascending, so largest is last in index 
    # and plotted at the top of y-axis.
    counts_sorted = counts.sort_values(ascending=True)
    
    counts_sorted.plot(kind="barh", ax=ax, width=0.8, color="gray", alpha=0.7)
    # Note: user said "no explicit colors", but usually standard matplotlib blue is default.
    # User said "default style (no seaborn). Do not set explicit colors."
    # So I should remove `color="gray", alpha=0.7` and let it be default blue.
    ax.clear()
    counts_sorted.plot(kind="barh", ax=ax, width=0.8)

    # ax.set_title(title) # Removed title
    ax.set_xlabel("Počet výskytov v odpovediach")
    ax.set_ylabel("Dôvod výberu (tag)")
    
    ax.grid(True, axis="x", linewidth=0.4, alpha=0.5)
    fig.tight_layout()
    
    return fig


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--input", 
        default="data/participants-atlas-remix-demo.csv", 
        help="Input CSV path."
    )
    ap.add_argument(
        "--output", 
        default="figures/fig-7-8-hajovna-reasons-frequency.svg", 
        help="Output SVG."
    )
    args = ap.parse_args()

    in_path = Path(args.input)
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    df = read_data(in_path)
    counts = extract_reasons(df)

    # Calculate stats for title (unused, removed from figure)
    N = len(df)
    total_diptychs = 0
    if "Diptych Count" in df.columns:
        total_diptychs = df["Diptych Count"].sum(skipna=True)
        if total_diptychs % 1 == 0:
            total_diptychs = int(total_diptychs)

    # title removed as per request
    # title = f"Dôvody výberu diptychu (tagy) — N={N}, diptychov={total_diptychs}"

    fig = plot_reasons(counts)
    fig.savefig(out_path)
    plt.close(fig)

    print(f"OK: wrote {out_path.resolve()}")


if __name__ == "__main__":
    main()
