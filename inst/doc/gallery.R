## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE, comment = "#>",
  dev = "ragg_png", dpi = 96,
  fig.width = 6.5, fig.height = 4.6, fig.retina = 2,
  message = FALSE, warning = FALSE
)
library(reaborn)
set.seed(0)
penguins <- load_dataset("penguins")
tips     <- load_dataset("tips")
fmri     <- load_dataset("fmri")

## -----------------------------------------------------------------------------
scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "species")

## -----------------------------------------------------------------------------
scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm",
            hue = "species", size = "body_mass_g", style = "species")

## -----------------------------------------------------------------------------
lineplot(data = fmri, x = "timepoint", y = "signal", hue = "event")

## ----fig.width = 8, fig.height = 3.6------------------------------------------
relplot(data = fmri, x = "timepoint", y = "signal", hue = "event",
        col = "region", kind = "line")

## -----------------------------------------------------------------------------
histplot(data = penguins, x = "flipper_length_mm", hue = "species", multiple = "stack")

## -----------------------------------------------------------------------------
kdeplot(data = penguins, x = "flipper_length_mm", hue = "species", fill = TRUE)

## -----------------------------------------------------------------------------
ecdfplot(data = penguins, x = "bill_length_mm", hue = "species")

## ----fig.width = 8, fig.height = 3.2------------------------------------------
displot(data = penguins, x = "flipper_length_mm", col = "species")

## -----------------------------------------------------------------------------
boxplot(data = tips, x = "day", y = "total_bill", hue = "smoker")

## -----------------------------------------------------------------------------
violinplot(data = tips, x = "day", y = "total_bill")

## -----------------------------------------------------------------------------
boxenplot(data = penguins, x = "species", y = "body_mass_g")

## -----------------------------------------------------------------------------
stripplot(data = tips, x = "day", y = "total_bill", hue = "sex")

## -----------------------------------------------------------------------------
swarmplot(data = tips, x = "day", y = "total_bill")

## -----------------------------------------------------------------------------
barplot(data = tips, x = "day", y = "total_bill")

## -----------------------------------------------------------------------------
pointplot(data = tips, x = "day", y = "total_bill", hue = "sex")

## -----------------------------------------------------------------------------
regplot(data = tips, x = "total_bill", y = "tip")

## ----fig.width = 8, fig.height = 3.6------------------------------------------
lmplot(data = tips, x = "total_bill", y = "tip", col = "time", hue = "smoker")

## ----fig.width = 7.5, fig.height = 5.5----------------------------------------
flights <- load_dataset("flights")
mat <- tapply(flights$passengers, list(flights$month, flights$year), function(x) x[1])
heatmap(mat, annot = TRUE, fmt = "d", linewidths = 0.5)

## ----fig.width = 6.5, fig.height = 6------------------------------------------
clustermap(mat)

## ----fig.width = 6, fig.height = 6--------------------------------------------
jointplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "species")

## ----fig.width = 7.5, fig.height = 7------------------------------------------
pairplot(penguins, vars = c("bill_length_mm", "bill_depth_mm", "flipper_length_mm"),
         hue = "species")

## ----fig.width = 6, fig.height = 1--------------------------------------------
palplot(color_palette("deep"))

## ----fig.width = 6, fig.height = 1--------------------------------------------
palplot(color_palette("husl", 8))

## -----------------------------------------------------------------------------
set_theme(style = "whitegrid")
scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "species")
set_theme()  # restore the default darkgrid

