library(dplyr)
library(ggplot2)
library(ggpubr)

data <- read.csv("italy_finland_plus.csv", sep=";")
data_ireland <- read.csv("italy_ireland_plus.csv", sep=";") %>%
  dplyr::filter(Country=="Ireland")
data_uk <- read.csv("italy_uk_plus.csv", sep=";") %>%
  dplyr::filter(Country=="United_Kingdom")
colnames(data_uk) <- colnames(data)
data <- rbind(data, data_ireland, data_uk)

#SAMPLE COMPOSITION: BASKET
#2015
count_italy_basket <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)), 1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2015 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2015") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

#2016
count_italy_basket <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)), 1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2016 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2016") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

#2017
count_italy_basket <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)), 1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2017 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2017") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

#2018
count_italy_basket <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)), 1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2018 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2018") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

#2019
count_italy_basket <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)), 1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2019 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2019") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

#2020
count_italy_basket <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Italy") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_italy_basket$PER <- round(100*(count_italy_basket$count / sum(count_italy_basket$count)), 1)
count_italy_basket$Country <- rep("Italy", nrow(count_italy_basket))

count_uk_basket <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n()) 
count_uk_basket$PER <- round(100*(count_uk_basket$count / sum(count_uk_basket$count)), 1)
count_uk_basket$Country <- rep("United Kingdom", nrow(count_uk_basket))

count_finland_basket <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Finland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_finland_basket$PER <- round(100*(count_finland_basket$count / sum(count_finland_basket$count)), 1)
count_finland_basket$Country <- rep("Finland", nrow(count_finland_basket))

count_ireland_basket <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(basket) %>%
  group_by(basket) %>%
  summarise(count = n())
count_ireland_basket$PER <- round(100*(count_ireland_basket$count / sum(count_ireland_basket$count)),1)
count_ireland_basket$Country <- rep("Ireland", nrow(count_ireland_basket))

p <- rbind(count_italy_basket, count_uk_basket, count_finland_basket, count_ireland_basket)

plot_2020 <- ggplot(p, aes(y = count, x = Country, fill = basket, label = paste("B.",basket, ": ",PER, "%"))) + 
  ggtitle("2020") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold") +
  theme(legend.position="none")

ggsave("sample_composition.jpg",annotate_figure(ggarrange(plot_2015, plot_2016, plot_2017, plot_2018, plot_2019, plot_2020, ncol = 2, nrow = 3),
                                                 top = "Sample composition: baskets"))

#SAMPLE COMPOSITION: DATA VOLUME INCLUDED

data$monthlyGB <- rep(1, nrow(data))
data$monthlyGB[data$Data.volume.included..Mb.month. >= 1024 & data$Data.volume.included..Mb.month. < 5120] <- 2
data$monthlyGB[data$Data.volume.included..Mb.month. >= 5120 & data$Data.volume.included..Mb.month. < 10240] <- 3
data$monthlyGB[data$Data.volume.included..Mb.month. >= 10240 & data$Data.volume.included..Mb.month. < 20480] <- 4
data$monthlyGB[data$Data.volume.included..Mb.month. >= 20480 & data$Data.volume.included..Mb.month. < 35840] <- 5
data$monthlyGB[data$Data.volume.included..Mb.month. >= 35840] <- 6

#2015
count_italy_data <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2015 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2015") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2016
count_italy_data <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2016 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2016") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2017
count_italy_data <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2017 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2017") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2018
count_italy_data <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2018 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2018") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")


#2019
count_italy_data <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2019 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2019") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")


#2020
count_italy_data <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Italy") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_italy_data$PER <- round(100*(count_italy_data$count / sum(count_italy_data$count)), 1)
count_italy_data$Country <- rep("Italy", nrow(count_italy_data))

count_uk_data <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n()) 
count_uk_data$PER <- round(100*(count_uk_data$count / sum(count_uk_data$count)), 1)
count_uk_data$Country <- rep("United Kingdom", nrow(count_uk_data))

count_finland_data <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Finland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_finland_data$PER <- round(100*(count_finland_data$count / sum(count_finland_data$count)), 1)
count_finland_data$Country <- rep("Finland", nrow(count_finland_data))

count_ireland_data <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(monthlyGB) %>%
  group_by(monthlyGB) %>%
  summarise(count = n())
count_ireland_data$PER <- round(100*(count_ireland_data$count / sum(count_ireland_data$count)), 1)
count_ireland_data$Country <- rep("Ireland", nrow(count_ireland_data))

p <- rbind(count_italy_data, count_uk_data, count_finland_data, count_ireland_data)

plot_2020 <- ggplot(p, aes(y = count, x = Country, fill = monthlyGB, label = paste(PER, "%"))) + 
  ggtitle("2020") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

ggsave("sample_composition_DATA.jpg",annotate_figure(ggarrange(plot_2015, plot_2016, plot_2017, plot_2018, plot_2019, plot_2020, legend = "bottom", common.legend = TRUE, ncol = 2, nrow = 3),
                                                                                                 top = "Sample composition: data volume included"))

#SAMPLE COMPOSITION: PREPAID/POSTPAID
#2015
count_italy_propost <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2015 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2015") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2016
count_italy_propost <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2016 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2016") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2017
count_italy_propost <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2017 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2017") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2018
count_italy_propost <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2018 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2018") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2019
count_italy_propost <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2019 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2019") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2020
count_italy_propost <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_italy_propost$PER <- round(100*(count_italy_propost$count / sum(count_italy_propost$count)), 1)
count_italy_propost$Country <- rep("Italy", nrow(count_italy_propost))

count_uk_propost <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n()) 
count_uk_propost$PER <- round(100*(count_uk_propost$count / sum(count_uk_propost$count)), 1)
count_uk_propost$Country <- rep("United Kingdom", nrow(count_uk_propost))

count_finland_propost <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_finland_propost$PER <- round(100*(count_finland_propost$count / sum(count_finland_propost$count)), 1)
count_finland_propost$Country <- rep("Finland", nrow(count_finland_propost))

count_ireland_propost <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Type.of.offer) %>%
  group_by(Type.of.offer) %>%
  summarise(count = n())
count_ireland_propost$PER <- round(100*(count_ireland_propost$count / sum(count_ireland_propost$count)), 1)
count_ireland_propost$Country <- rep("Ireland", nrow(count_ireland_propost))

p <- rbind(count_italy_propost, count_uk_propost, count_finland_propost, count_ireland_propost)

plot_2020 <- ggplot(p, aes(y = count, x = Country, fill = Type.of.offer, label = paste(PER, "%"))) + 
  ggtitle("2020") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

ggsave("sample_composition_PREPOST.jpg",annotate_figure(ggarrange(plot_2015, plot_2016, plot_2017, plot_2018, plot_2019, plot_2020, legend = "bottom", common.legend = TRUE, ncol = 2, nrow = 3),
                                                                                                      top = "Sample composition: type of offer"))

#SAMPLE COMPOSITION: SMARTPHONE INCLUDED

#2015
count_italy_smart <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2015) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2015 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2015") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2016
count_italy_smart <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2016) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2016 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2016") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2017
count_italy_smart <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2017) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2017 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2017") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2018
count_italy_smart <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2018) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2018 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2018") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2019
count_italy_smart <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2019) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2019 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2019") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

#2020
count_italy_smart <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Italy") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_italy_smart$PER <- round(100*(count_italy_smart$count / sum(count_italy_smart$count)), 1)
count_italy_smart$Country <- rep("Italy", nrow(count_italy_smart))

count_uk_smart <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "United_Kingdom") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n()) 
count_uk_smart$PER <- round(100*(count_uk_smart$count / sum(count_uk_smart$count)), 1)
count_uk_smart$Country <- rep("United Kingdom", nrow(count_uk_smart))

count_finland_smart <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Finland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_finland_smart$PER <- round(100*(count_finland_smart$count / sum(count_finland_smart$count)), 1)
count_finland_smart$Country <- rep("Finland", nrow(count_finland_smart))

count_ireland_smart <- data %>%
  filter(Year == 2020) %>%
  filter(Country == "Ireland") %>%
  dplyr::select(Smartphone.included.in.the.offer.) %>%
  group_by(Smartphone.included.in.the.offer.) %>%
  summarise(count = n())
count_ireland_smart$PER <- round(100*(count_ireland_smart$count / sum(count_ireland_smart$count)), 1)
count_ireland_smart$Country <- rep("Ireland", nrow(count_ireland_smart))

p <- rbind(count_italy_smart, count_uk_smart, count_finland_smart, count_ireland_smart)

plot_2020 <- ggplot(p, aes(y = count, x = Country, fill = Smartphone.included.in.the.offer., label = paste(PER, "%"))) + 
  ggtitle("2020") +
  ylab("%") + 
  xlab("Country") +
  geom_bar(position = "fill", stat = "identity") +
  geom_text(size = 3, position = position_fill(vjust = 0.5), color = "white", fontface = "bold")

ggsave("sample_composition_SMART.jpg",annotate_figure(ggarrange(plot_2015, plot_2016, plot_2017, plot_2018, plot_2019, plot_2020, legend = "bottom", common.legend = TRUE, ncol = 2, nrow = 3),
                                                                                                         top = "Sample composition: smartphone included in the offer"))
