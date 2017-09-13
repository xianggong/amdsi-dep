#!/usr/bin/env python
""" Output heatmap of instructions """

import argparse
import pandas as pd
# import numpy as np
import seaborn as sns
import matplotlib
import matplotlib.pyplot as plt

matplotlib.rcParams['text.usetex'] = True


def main():
    """ Main function """

    # Arg parser
    parser = argparse.ArgumentParser(
        description='Anaylyze assembly')
    parser.add_argument('--input', nargs='+', help='input in csv')
    parser.add_argument('--output', nargs=1, help='output')
    args = parser.parse_args()

    sns.set(style="white")

    # Load dataframe from csv file
    all_df = pd.DataFrame()
    all_df_y_ticks = []
    for csv in args.input:
        all_df_y_ticks.append(csv.split(".")[0])
        df = pd.read_csv(csv, header=None)
        df.fillna(0)
        all_df = pd.concat([all_df, df])
        # print all_df

    all_df.fillna(-1)

    # Set up the matplotlib figure
    f, ax = plt.subplots(figsize=(10, 4))

    # Draw the heatmap
    cmap = plt.get_cmap('Greys', 4)
    ax = sns.heatmap(all_df, cmap=cmap, vmin=0.0,
                     vmax=4.0, yticklabels=all_df_y_ticks)

    # Set X and Y label
    # ax.set_xlabel("Instruction line number")
    # ax.set_ylabel("Benchmarks")

    # Set colorbar
    cbar = ax.collections[0].colorbar
    cbar.set_ticks([0.5, 1.5, 2.5, 3.5])
    cbar.set_ticklabels(['No insts', 'Normal', 'Long Latency', 'Independent'])

    # Set X and Y axis
    plt.yticks(rotation=0)
    plt.tick_params(
        axis='x',          # changes apply to the x-axis
        which='both',      # both major and minor ticks are affected
        bottom='off',      # ticks along the bottom edge are off
        top='off',         # ticks along the top edge are off
        labelbottom='off')  # labels along the bottom edge are off

    # Remove redundant white space
    f.tight_layout()

    if args.output is not None:
        plt.savefig(args.output[0], format='eps')
    else:
        plt.show()
    plt.close(f)


if __name__ == '__main__':
    main()
