## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", eval = FALSE)

## -----------------------------------------------------------------------------
# library(reaborn)              # sets seaborn theme + palette, exposes sns.* aliases
# 
# penguins <- load_dataset("penguins")
# 
# # Seaborn API, verbatim — string columns, named args, Python literals
# sns.scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm",
#                 hue = "species")
# 
# sns.histplot(data = penguins, x = "flipper_length_mm", hue = "species",
#              multiple = "stack", kde = True)
# 
# # The result IS a ggplot — extend with the grammar of graphics
# scatterplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "species") +
#   ggplot2::facet_wrap(~island) +
#   ggplot2::scale_x_log10() +
#   ggplot2::labs(title = "Penguin bills")

