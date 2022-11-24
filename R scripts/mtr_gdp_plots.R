library(dplyr)
library(ggplot2)
library(ggpubr)

data <- read.csv("mtr_gdp.csv", sep=";", dec = ",")
data <- data %>%
  dplyr::filter(Country %in% c("IT", "UK", "FI", "IE"))

ggplot(data, aes(x = Year, y = mtr)) + 
  geom_line(aes(color = Country), size = 1) +
  theme_minimal()

ggplot(data, aes(x = Year, y = gdp_growth_rate)) + 
  geom_line(aes(color = Country), size = 1) +
  theme_minimal()