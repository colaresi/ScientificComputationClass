"""Create plots
Parameters:
  sys.argv[1]: name of plot to save, with extension (eg html)
"""

import sys
import altair as alt
from vega_datasets import data


def load_data():
    """load seattle weather data
    assumptions: data imported from vega_datasets
    """
    return data.seattle_weather()


def add_pct(df):
    """add column so pct can be calculated, as side effect"""
    df["pct"] = (
        1 / df.shape[0]
    )  # df.shape returns the shape attribute for the DataFrame, rows by columns


def make_plot(df):
    """create weather plot
    Parameters
      df: data frame to use (from load_data)
    """
    scale = alt.Scale(
        domain=["sun", "fog", "drizzle", "rain", "snow"],
        range=["#e7ba52", "#c7c7c7", "#aec7e8", "#1f77b4", "#9467bd"],
    )

    selection = alt.selection_multi(fields=["weather"], bind="legend")

    rawDataPlot = (
        alt.Chart(df)
        .mark_point(opacity=0.3)
        .encode(
            x="date:T",
            y="precipitation:Q",
            color=alt.Color(
                "weather", legend=alt.Legend(title="Weather type"), scale=scale
            ),
            opacity=alt.condition(selection, alt.value(0.3), alt.value(0.1)),
            tooltip=["date", "precipitation", "weather", "temp_max", "temp_min"],
        )
        .add_selection(selection)
    )

    avgPlot = (
        alt.Chart(df)
        .mark_line(color="black")
        .encode(x="yearmonth(date):T", y="average(precipitation):Q")
        .transform_filter(selection)
    )

    hHist = (
        alt.Chart(df)
        .mark_bar()
        .encode(
            alt.Y("precipitation:Q", bin={"step": 5}, title=None),
            alt.X("sum(pct):Q", axis=alt.Axis(format="%"), title="% of days"),
            alt.Color("weather", legend=alt.Legend(title="Weather type"), scale=scale),
            opacity=alt.condition(selection, alt.value(1), alt.value(0.1)),
        )
        .add_selection(selection)
        .properties(height=300, width=100)
    )

    newLowerPlot = (
        alt.Chart(df)
        .mark_bar()
        .encode(
            x=alt.X("yearmonth(date):N", title="Month of the year"),
            y="count()",
            color=alt.Color(
                "weather",
                legend=alt.Legend(title="Weather type", orient="bottom"),
                scale=scale,
            ),
            opacity=alt.condition(selection, alt.value(1), alt.value(0.1)),
            tooltip=["yearmonth(date):N", "weather", "count()"],
        )
        .add_selection(selection)
        .properties(height=100, width=400)
    )

    mainPlot = alt.layer(rawDataPlot, avgPlot).properties(height=300, width=400)
    hplot = (mainPlot | hHist).resolve_scale(y="shared")
    finalPlot = (hplot & newLowerPlot).resolve_scale(x="shared")
    return finalPlot


def main(fname):
    """run everything, save plot with name"""
    df = load_data()
    add_pct(df)
    finalPlot = make_plot(df)
    finalPlot.save(fname)


if __name__ == "__main__":
    NAME = sys.argv[1]
    main(NAME)
