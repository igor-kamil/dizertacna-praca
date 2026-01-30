#!/usr/bin/env python3
"""
Generate a simple participant profile summary from data/participants-atlas-remix-demo.csv.

Input CSV columns:
  "Age Range"
  "Relationship to Art"
  "Digital Skill Level"
  "Familiar with webumenia.sk?"
  "Diptych Count" (optional)

Output:
  SVG file (default: figures/fig-7-7-hajovna-participants-summary.svg)
"""

from __future__ import annotations

import argparse
from pathlib import Path

import pandas as pd
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# Set font preference
plt.rcParams["font.family"] = ["Setup Serif", "serif"]
plt.rcParams["svg.fonttype"] = "none"


def read_data(path: Path) -> pd.DataFrame:
    df = pd.read_csv(path)
    required = [
        "Age Range",
        "Relationship to Art",
        "Digital Skill Level",
        "Familiar with webumenia.sk?",
    ]
    missing = [c for c in required if c not in df.columns]
    if missing:
        raise ValueError(f"Input CSV missing columns: {missing}")

    # Drop fully empty rows
    df = df.dropna(how="all")

    # Coerce numeric column if present
    if "Diptych Count" in df.columns:
        df["Diptych Count"] = pd.to_numeric(df["Diptych Count"], errors="coerce")

    return df


def plot_summary(df: pd.DataFrame) -> plt.Figure:
    fig, axes = plt.subplots(2, 2, figsize=(7.0, 6.0))
    # Flatten to 1D array for iteration
    ax_list = axes.flatten()

    charts = [
        ("Age Range", "Vek"),
        ("Relationship to Art", "Vzťah k umeniu"),
        ("Digital Skill Level", "Digitálna istota"),
        ("Familiar with webumenia.sk?", "Pozná webumenia.sk?"),
    ]

    for ax, (col, chart_title) in zip(ax_list, charts):
        # Count values, ignoring NaN. Sort ascending so barh plots largest at top.
        counts = df[col].value_counts().sort_values(ascending=True)
        
        counts.plot(kind="barh", ax=ax, width=0.8)
        
        ax.set_title(chart_title)
        ax.set_ylabel("")  # Clear y-label
        ax.grid(True, axis="x", linewidth=0.4, alpha=0.5)

    # Adjust layout to make room for subplots
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
        default="figures/fig-7-7-hajovna-participants-summary.svg", 
        help="Output SVG."
    )
    args = ap.parse_args()

    in_path = Path(args.input)
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    df = read_data(in_path)

    # Calculate stats for title (unused, removed from figure)
    N = len(df)
    total_diptychs = 0
    if "Diptych Count" in df.columns:
        total_diptychs = df["Diptych Count"].sum(skipna=True)
        # Display as int if whole number
        if total_diptychs % 1 == 0:
            total_diptychs = int(total_diptychs)

    # title removed as per request
    # title = f"Pop-up test (Hajovňa, 25. 1. 2026): profil účastníkov (N={N}, diptychov={total_diptychs})"

    fig = plot_summary(df)
    fig.savefig(out_path)
    plt.close(fig)

    print(f"OK: wrote {out_path.resolve()}")


if __name__ == "__main__":
    main()
