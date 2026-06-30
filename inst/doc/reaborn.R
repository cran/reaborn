## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE, comment = "#>",
  dev = "ragg_png", dpi = 96, fig.width = 6.5, fig.height = 4.6, fig.retina = 2,
  message = FALSE, warning = FALSE
)
library(reaborn)
set.seed(0)

## -----------------------------------------------------------------------------
library(reaborn)

## -----------------------------------------------------------------------------
penguins <- load_dataset("penguins")

sns.scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm",
                hue = "species")

## -----------------------------------------------------------------------------
histplot(data = penguins, x = "flipper_length_mm", hue = "species",
         multiple = "stack", kde = TRUE)

## -----------------------------------------------------------------------------
scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "species") +
  ggplot2::facet_wrap(~island) +
  ggplot2::scale_x_log10() +
  ggplot2::labs(title = "Penguin bills, by island")

