#!/usr/bin/env python3
"""
Generate a simple long-tail chart from data/items.csv.

Input CSV columns:
  pos,view_count

Output:
  SVG file (default: figures/fig-5-2-longtail-items.svg)
"""

from __future__ import annotations

import argparse
from pathlib import Path

import pandas as pd
import matplotlib.pyplot as plt


def read_data(path: Path) -> pd.DataFrame:
    df = pd.read_csv(path)
    if "view_count" not in df.columns:
        raise ValueError("Input CSV must contain column 'view_count'.")

    df = df[["view_count"]].copy()
    df["view_count"] = pd.to_numeric(df["view_count"], errors="coerce")
    df = df.dropna()
    df = df[df["view_count"] >= 0]

    # Rank by view_count (descending) to get long-tail ordering.
    df = df.sort_values("view_count", ascending=False).reset_index(drop=True)
    df["rank"] = df.index + 1
    return df


def plot_longtail(df: pd.DataFrame, title: str) -> plt.Figure:
    fig = plt.figure(figsize=(7.0, 4.0))
    plt.plot(df["rank"], df["view_count"], linewidth=0.9)

    plt.xlabel("Poradie diela (podľa počtu zobrazení)")
    plt.ylabel("Počet zobrazení")
    plt.title(title)

    plt.grid(True, linewidth=0.4, alpha=0.5)
    plt.tight_layout()
    return fig


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--input", default="data/items.csv", help="Input CSV path.")
    ap.add_argument("--output", default="figures/fig-5-2-longtail-items.svg", help="Output SVG.")
    ap.add_argument(
        "--title",
        default="Long-tail efekt návštevnosti diel",
        help="Figure title.",
    )
    args = ap.parse_args()

    in_path = Path(args.input)
    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    df = read_data(in_path)
    fig = plot_longtail(df, args.title)
    fig.savefig(out_path)
    plt.close(fig)

    print(f"OK: wrote {out_path.resolve()}")


if __name__ == "__main__":
    main()
