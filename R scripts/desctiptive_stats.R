library(dplyr)
library(plotly)
library(MASS)
  
#First 4 baskets plots
data <- read.csv("italy_finland_plus.csv", sep=";")
data_ireland <- read.csv("italy_ireland_plus.csv", sep=";") %>%
  dplyr::filter(Country=="Ireland")
data_uk <- read.csv("italy_uk_plus.csv", sep=";") %>%
  dplyr::filter(Country=="United_Kingdom")
colnames(data_uk) <- colnames(data)
data <- rbind(data, data_ireland, data_uk)

# Type.of.offer --------------------------

d <- data %>%
  filter(Country == "Italy") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_italy <- ggplot(d %>% filter(Type.of.offer != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Type.of.offer, color=Type.of.offer)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Italy")

d <- data %>%
  filter(Country == "Ireland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_ireland <- ggplot(d %>% filter(Type.of.offer != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Type.of.offer, color=Type.of.offer)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Ireland")

d <- data %>%
  filter(Country == "Finland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_finland <- ggplot(d %>% filter(Type.of.offer != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Type.of.offer, color=Type.of.offer)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Finland")

d <- data %>%
  filter(Country == "United_Kingdom") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_uk <- ggplot(d %>% filter(Type.of.offer != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Type.of.offer, color=Type.of.offer)) +
  geom_line(aes(y = Avg)) +
  ggtitle("United_Kingdom")

ggsave("type_offer.jpg",annotate_figure(ggarrange(plot_italy, plot_ireland, plot_uk, plot_finland,  ncol = 2, nrow = 2, legend = "bottom", common.legend = TRUE),  top = "Price dynamics overview: type of offer specification"))

# Mobile.operator --------------------------

d <- data %>%
  filter(Country == "Italy") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

d$Mobile.operator[d$Mobile.operator == "Vodafone Italy"] <- "Vodafone"

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_italy <- ggplot(d %>% filter(Mobile.operator != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Mobile.operator, color=Mobile.operator)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Italy")

d <- data %>%
  filter(Country == "Ireland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

d$Mobile.operator[d$Mobile.operator == "Vodafone Ireland"] <- "Vodafone"
d$Mobile.operator[d$Mobile.operator == "Three Ireland"] <- "Three"

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_ireland <- ggplot(d %>% filter(Mobile.operator != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Mobile.operator, color=Mobile.operator)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Ireland")

d <- data %>%
  filter(Country == "Finland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

d$Mobile.operator[d$Mobile.operator == "Telia"] <- "Teliasonera Finland"
d$Mobile.operator[d$Mobile.operator == "Sonera"] <- "Teliasonera Finland"

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_finland <- ggplot(d %>% filter(Mobile.operator != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Mobile.operator, color=Mobile.operator)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Finland")

d <- data %>%
  filter(Country == "United_Kingdom") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

d$Mobile.operator[d$Mobile.operator == "Vodafone UK"] <- "Vodafone"
d$Mobile.operator[d$Mobile.operator == "Three UK"] <- "Three"
d$Mobile.operator[d$Mobile.operator == "EE"] <- "Telefonica"

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_uk <- ggplot(d %>% filter(Mobile.operator != ""), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Mobile.operator, color=Mobile.operator)) +
  geom_line(aes(y = Avg)) +
  ggtitle("United_Kingdom")

ggsave("mobile_operator.jpg",annotate_figure(ggarrange(plot_italy, plot_ireland, plot_uk, plot_finland,  ncol = 2, nrow = 2),  top = "Price dynamics overview: mobile operator specification"))

# Data.volume.included..Mb.month. --------------------------

d <- data %>%
  filter(Country == "Italy") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_italy <- ggplot(d %>% filter(Data.volume.included..Mb.month. != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Data.volume.included..Mb.month.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Italy")

d <- data %>%
  filter(Country == "Ireland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_ireland <- ggplot(d %>% filter(Data.volume.included..Mb.month. != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Data.volume.included..Mb.month.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Ireland")

d <- data %>%
  filter(Country == "Finland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_finland <- ggplot(d %>% filter(Data.volume.included..Mb.month. != ""), aes(x=Year)) +
  geom_point(aes(y=Price)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Finland")

d <- data %>%
  filter(Country == "United_Kingdom") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_uk <- ggplot(d %>% filter(Data.volume.included..Mb.month. != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Data.volume.included..Mb.month.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("United_Kingdom")

ggsave("data_volume.jpg",annotate_figure(ggarrange(plot_italy, plot_ireland, plot_uk, plot_finland,  ncol = 2, nrow = 2, legend = "bottom", common.legend = TRUE),  top = "Price dynamics overview: data volume included (MB) specification"))

# Contract.duration --------------------------

d <- data %>%
  filter(Country == "Italy") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_italy <- ggplot(d %>% filter(Contract.duration != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Contract.duration)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Italy")

d <- data %>%
  filter(Country == "Ireland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_ireland <- ggplot(d %>% filter(Contract.duration != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Contract.duration)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Ireland")

d <- data %>%
  filter(Country == "Finland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_finland <- ggplot(d %>% filter(Contract.duration != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Contract.duration)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Finland")

d <- data %>%
  filter(Country == "United_Kingdom") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_uk <- ggplot(d %>% filter(Contract.duration != ""), aes(x=Year)) +
  geom_point(aes(y=Price, size=Contract.duration)) +
  geom_line(aes(y = Avg)) +
  ggtitle("United_Kingdom")

ggsave("contract_duration.jpg",annotate_figure(ggarrange(plot_italy, plot_ireland, plot_uk, plot_finland,  ncol = 2, nrow = 2, legend = "bottom", common.legend = TRUE),  top = "Price dynamics overview: contract duration (months) specification"))

# Smartphone.included.in.the.offer. --------------------------

d <- data %>%
  filter(Country == "Italy") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_italy <- ggplot(d %>% filter(Smartphone.included.in.the.offer. %in% c(0,1)) %>% mutate(Smartphone.included.in.the.offer. = as.factor(Smartphone.included.in.the.offer.)), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Smartphone.included.in.the.offer., color=Smartphone.included.in.the.offer.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Italy")

d <- data %>%
  filter(Country == "Ireland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_ireland <- ggplot(d %>% filter(Smartphone.included.in.the.offer. %in% c(0,1)) %>% mutate(Smartphone.included.in.the.offer. = as.factor(Smartphone.included.in.the.offer.)), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Smartphone.included.in.the.offer., color=Smartphone.included.in.the.offer.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Ireland")

d <- data %>%
  filter(Country == "Finland") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_finland <- ggplot(d %>% filter(Smartphone.included.in.the.offer. %in% c(0,1)) %>% mutate(Smartphone.included.in.the.offer. = as.factor(Smartphone.included.in.the.offer.)), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Smartphone.included.in.the.offer., color=Smartphone.included.in.the.offer.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("Finland")

d <- data %>%
  filter(Country == "United_Kingdom") %>%
  filter(basket < 5) %>%
  filter(Outlier == 0)

averages <- d %>%
  group_by(Year)%>%
  summarise(average = mean(Price))

for(year in c(2015, 2016, 2017, 2018, 2019, 2020)){
  d$Avg[d$Year == year] = averages$average[averages$Year == year]
}

plot_uk <- ggplot(d %>% filter(Smartphone.included.in.the.offer. %in% c(0,1)) %>% mutate(Smartphone.included.in.the.offer. = as.factor(Smartphone.included.in.the.offer.)), aes(x=Year)) +
  geom_point(aes(y=Price, shape=Smartphone.included.in.the.offer., color=Smartphone.included.in.the.offer.)) +
  geom_line(aes(y = Avg)) +
  ggtitle("United_Kingdom")

ggsave("smartphone.jpg",annotate_figure(ggarrange(plot_italy, plot_ireland, plot_uk, plot_finland,  ncol = 2, nrow = 2, legend = "bottom", common.legend = TRUE),  top = "Price dynamics overview: smartphone included specification"))

