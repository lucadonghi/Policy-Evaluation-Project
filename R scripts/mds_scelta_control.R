library(dplyr)
library(magrittr)
library(dplyr)
library(ggpubr)

mds <- function(data) {
  # Compute MDS
  mds <- data %>%
    dist() %>%          
    cmdscale() %>%
    as_tibble()
  colnames(mds) <- c("Dim.1", "Dim.2")
  # Plot MDS
  plot <- ggscatter(mds, x = "Dim.1", y = "Dim.2", 
            label = rownames(data),
            size = 1,
            repel = TRUE)
  return(plot)
}

data_0 <- read.csv("MDS_control_country_choice.csv", sep = ";", dec = ",") 
row.names(data_0) <- data_0$Country

#Choice between Denmark and the UK
data <- data_0 %>%
  dplyr::filter(Country %in% c("Denmark", "Italy", "United Kingdom")) %>%
  dplyr:: mutate(Ask_merge = c(2015, 2016, 2016)) %>%
  dplyr::select(-c(Country, Share.of.MVNO.subscription.over.mobile.subs......2018, Share.of.MNO.subscription.over.mobile.subs......2018, MNO.NUMBER.2017.Q4)) %>%
  scale()

data = data[ , apply(data, 2, function(x) !any(is.na(x)))]

mds(data)
dist(data)

#Choice between Germany, Ireland and Norway
data <- data_0 %>%
  dplyr::filter(Country %in% c("Germany", "Ireland", "Italy", "Norway")) %>%
  dplyr:: mutate(Merge = c(2014.75, 2014.5, 2016.75, 2015)) %>% 
  dplyr::select(-c(Country, MNO.NUMBER.2017.Q4)) %>%
  scale()

data = data[ , apply(data, 2, function(x) !any(is.na(x)))]

mds(data)
dist(data)

#Choice between Belgium, Bulgaria, Croatia, Cyprus, Czech Republic, Finland, Romania, Spain
data <- data_0 %>%
  dplyr::filter(Country %in% c("Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic", "Finland", "Italy", "Romania", "Spain")) %>%
  dplyr::select(-c(Country, Share.of.MVNO.subscription.over.mobile.subs......2018, Share.of.MNO.subscription.over.mobile.subs......2018)) %>%
  scale()

data = data[ , apply(data, 2, function(x) !any(is.na(x)))]

mds(data)
dist(data)
