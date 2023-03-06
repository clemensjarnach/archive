## ================================
## Script name: "YouGov_Voting_Intetion_Tracker.R"
## Author: Clemens Jarnach
## Copyright (c) Clemens Jarnach, 2023
## Email: clemens.jarnach@gtc.ox.ac.uk
## Date Created: 2023-02-28
## Date Modified:  2023-03-03
## ================================

## check/set working directory:  (uncomment/comment as required)
getwd()  
## ---------------------------
## load packages:  (uncomment/comment as required)
library(tidyverse)
library(dplyr)
library(tidyr)
library(ggplot2)
library(lubridate)

## ---------------------------
source_URL <- "https://docs.cdn.yougov.com/kpdyww5jvq/YG%20trackers%20-%20Voting%20Intention%20since%20GE%202019_W.pdf"
data <- read.csv("YouGov_Voting_Intention_Tracker_GB.csv", header = TRUE) # Read in the data
head(data)

variable.names(data) # set new variable names
colnames(data) <- c("x","collection_date", "Con", "Lab", "LibDem", "SNP", "Green", "RefUK", "Other", "ConLeadOverLab")   

## ---------------------------
## Drop unwated columns
# Print the current column names and the number of columns
print(colnames(data))
print(ncol(data))
# Drop the first and last column
data <- data[, 2:(ncol(data)-1)]
# Print the updated column names and the number of columns
print(colnames(data))
print(ncol(data))

party_names <- c("Con", "Lab", "LibDem", "SNP", "Green", "RefUK", "Other")
colors <- c("#0087DC", "#d50000", "#FAA61A", "#ffe600", "#6ab023", "#00c9b5",  "#808080")
names(colors) <- party_names
colors

## ---------------------------
## Investigate the Data Structure
str(data) # Print the structure of the data
head(data)
print(min(data$collection_date))
print(max(data$collection_date))


## ---------------------------
# Convert collection_date to date format
data$collection_date <- as.Date(data$collection_date, "%d/%m/%Y")

# Create the ggplot line graph
ggplot(data, aes(x = collection_date)) +
  geom_line(aes(y = Con, color = "Con")) +
  geom_line(aes(y = Lab, color = "Lab")) +
  geom_line(aes(y = LibDem, color = "LibDem")) +
  geom_line(aes(y = SNP, color = "SNP")) +
  geom_line(aes(y = Green, color = "Green")) +
  geom_line(aes(y = RefUK, color = "RefUK")) +
  geom_line(aes(y = Other, color = "Other")) +
  labs(x = "Collection Date", y = "Percentage", 
  color = "Party", 
  title = "Voting Intention Tracker GB",
  subtitle =  "Source: YouGov, 2021") +
  scale_color_manual(values = colors) +
  theme_bw()

  
## ---------------------------
## Create a line graph with smoothed lines
# Convert collection_date to date format
data$collection_date <- as.Date(data$collection_date, "%d/%m/%Y")
# Create the ggplot line graph with smoothed lines using method="loess": Local Regression 
ggplot(data, aes(x = collection_date)) +
  geom_line(aes(y = Con, color = "Con"), size = 1) +
  geom_line(aes(y = Lab, color = "Lab"), size = 1) +
  geom_line(aes(y = LibDem, color = "LibDem"), size = 1) +
  geom_line(aes(y = SNP, color = "SNP"), size = 1) +
  geom_line(aes(y = Green, color = "Green"), size = 1) +
  geom_line(aes(y = RefUK, color = "RefUK"), size = 1) +
  geom_line(aes(y = Other, color = "Other"), size = 1) +
  geom_smooth(aes(y = Con, color = "Con"), size = 1, method = "loess") +
  geom_smooth(aes(y = Lab, color = "Lab"), size = 1, method = "loess") +
  geom_smooth(aes(y = LibDem, color = "LibDem"), size = 1, method = "loess") +
  geom_smooth(aes(y = SNP, color = "SNP"), size = 1, method = "loess") +
  geom_smooth(aes(y = Green, color = "Green"), size = 1, method = "loess") +
  geom_smooth(aes(y = RefUK, color = "RefUK"), size = 1, method = "loess") +
  geom_smooth(aes(y = Other, color = "Other"), size = 1, method = "loess") +
  labs(x = "Collection Date", y = "Percentage", color = "Party") +
  scale_color_manual(values = colors) +
  scale_x_date(date_breaks = "3 month", date_labels = "%b %Y") +
  theme_bw()

## repeat the ggplot but use gemo_smooth method = "gam": Generalized Additive Models
ggplot(data, aes(x = collection_date)) +
geom_line(aes(y = Con, color = "Con"), size = .5) +
  geom_line(aes(y = Lab, color = "Lab"), size = .5) +
  geom_line(aes(y = LibDem, color = "LibDem"), size = .5) +
  geom_line(aes(y = SNP, color = "SNP"), size = .5) +
  geom_line(aes(y = Green, color = "Green"), size = .5) +
  geom_line(aes(y = RefUK, color = "RefUK"), size = .5) +
  geom_line(aes(y = Other, color = "Other"), size = .5) +
    geom_smooth(aes(y = Con, color = "Con"), size = 1, method = "gam") +
    geom_smooth(aes(y = Lab, color = "Lab"), size = 1, method = "gam") +
    geom_smooth(aes(y = LibDem, color = "LibDem"), size = 1, method = "gam") +
    geom_smooth(aes(y = SNP, color = "SNP"), size = 1, method = "gam") +
    geom_smooth(aes(y = Green, color = "Green"), size = 1, method = "gam") +
    geom_smooth(aes(y = RefUK, color = "RefUK"), size = 1, method = "gam") +
    geom_smooth(aes(y = Other, color = "Other"), size = 1, method = "gam") +
    labs(x = "Collection Date", y = "Percentage", color = "Party") +
  labs(x = "Collection Date", y = "Percentage", 
  color = "Party", 
  title = "Voting Intention Tracker (GB)",
  caption = "Data Source: YouGov, Feb 2023") +
  scale_color_manual(values = colors) +
  theme_bw()

# Save the plot as a PNG file
ggsave("plot1.png", width = 8, height = 6, dpi = 300)



## repeat the ggplot but use geom_point
ggplot(data, aes(x = collection_date)) +
  geom_point(aes(y = Con, color = "Con"), size = .8) +
  geom_point(aes(y = Lab, color = "Lab"), size = .8) +
  geom_point(aes(y = LibDem, color = "LibDem"), size = .8) +
  geom_point(aes(y = SNP, color = "SNP"), size = .8) +
  geom_point(aes(y = Green, color = "Green"), size = .8) +
  geom_point(aes(y = RefUK, color = "RefUK"), size = .8) +
  geom_point(aes(y = Other, color = "Other"), size = .8) +
    geom_smooth(aes(y = Con, color = "Con"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = Lab, color = "Lab"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = LibDem, color = "LibDem"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = SNP, color = "SNP"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = Green, color = "Green"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = RefUK, color = "RefUK"), size = 1, method = "loess", span = 0.3) +
    geom_smooth(aes(y = Other, color = "Other"), size = 1, method = "loess", span = 0.3) +
  labs(x = "Collection Date", y = "Vote Share Percentage",
  color = "Party", 
  title = "Voting Intention Tracker (GB)",
  caption = "Data Source: YouGov; Feb 2023; Sample size = 2,003; \nTrend lines estimated using local polynomial regression models (LOESS)") +
  scale_color_manual(values = colors) +
  scale_y_continuous(breaks = seq(0, 100, by = 10)) +
  theme_bw()

ggsave("plot2.png", width = 8, height = 6, dpi = 300)


## ---------------------------
# Convert the collection_date column to a date format
data$collection_date <- as.Date(data$collection_date)

# Create bins for each year in the dataset
data_perYear <- data %>%
  mutate(year = year(collection_date)) %>%
  group_by(year) %>%
  summarize(
    Con_mean = mean(Con),
    Con_sd = sd(Con),
    Lab_mean = mean(Lab),
    Lab_sd = sd(Lab),
    LibDem_mean = mean(LibDem),
    LibDem__sd = sd(LibDem),
    SNP_mean = mean(SNP),
    SNP_sd = sd(SNP),
    Grn_mean = mean(Green),
    Grn_sd = sd(Green),
    RefUK_mean = mean(RefUK),
    RefUK_sd = sd(RefUK),
    other_mean = mean(Other),
    other_sd = sd(Other)
  )
## OR even simpler with just mean 

data_perYear <- data %>%
  mutate(year = year(collection_date)) %>%
  group_by(year) %>%
  summarize(
    Con_mean = mean(Con),
    Lab_mean = mean(Lab),
    LibDem_mean = mean(LibDem),
    SNP_mean = mean(SNP),
    Grn_mean = mean(Green),
    RefUK_mean = mean(RefUK),
    other_mean = mean(Other),
  )
# View the summary statistics
data_perYear
# round the summary statistics
data_perYear <- round(data_perYear)
#save data_perYear as txt file
write.table(data_perYear, file = "data_perYear.txt", sep = ",", row.names = FALSE)




## ---------------------------
## YouGov: "Who do people THINK will win the next election"
## Question: "What do you think is the most likely result of the next general election?"
data_think <- read.csv("who-do-people-think-will-win-the-next-election.csv", header = TRUE) # Read in the data
head(data_think)

## ---------------------------
# Print the current column names and the number of columns
print(colnames(data_think))
print(ncol(data_think))
# Drop the last two column
data_think <- data_think[, 1:8]
data_think$date <- as.Date(data_think$date, "%d/%m/%Y")

## ---------------------------
## Investigate the Data Structure
str(data_think) # Print the structure of the data
head(data_think)
print(min(data_think$date))
print(max(data_think$date))

# Convert the data to percentages
data_think[, 2:8] <- data_think[, 2:8] * 100
data_think[, 2:8] 

# create new column names
colnames_long <-  c("date", 
  "A large Conservative majority",
	"A small Conservative majority",
  "A hung Parliament, resulting in a Conservative led government",
  "A hung Parliament, resulting in a Labour led government",
  "A small Labour majority",
  "A large Labour majority",
  "Don't know")

colnames_mid <- c("date", 
  "Large Con. majority",
  "Small Con. majority",
  "Hung Con. gov.",
  "Hung Lab. gov.",
  "Small Lab. majority",
  "Large Lab. majority",
  "Don't know")

colnames_short <-  c("date", "lrgCon", "smllCon", "hungCon", "hungLab",
  "smllLab", "lrgLab", "DK")

colnames(data_think) <- colnames_short
tibble(colnames_short, colnames_long)

## define colors
think_color <- c("#0087DC", "#60B4E9", "#BFE1F6", "#F5BFBF", "#E56060", "#d50000",  "#808080")
names(think_color) <- colnames_short[2:8]
think_color

## plots 
data_think$date <- as.Date(data_think$date, "%d/%m/%Y")
ggplot(data_think, aes(x = date)) +
  geom_line(aes(y = lrgCon, color = "lrgCon"), size = 1) +
  geom_line(aes(y = smllCon, color = "smllCon"), size = 1) +
  geom_line(aes(y = hungCon, color = "hungCon"), size = 1) +
  geom_line(aes(y = hungLab, color = "hungLab"), size = 1) +
  geom_line(aes(y = smllLab, color = "smllLab"), size = 1) +
  geom_line(aes(y = lrgLab, color = "lrgLab"), size = 1) +
  geom_line(aes(y = DK, color = "DK"), size = 1) +
  labs(x = "Collection Date", y = "Percentage",
  color = "Expectation", 
  title = "Electoral Expectations (GB)",
  subtitle = "Full Question: What do you think is the most likely result of the next general election?",
  caption = "Data Source: YouGov; Feb 2023; Sample size = 1627 - 1820 Adults per wave") +
  scale_color_manual(values = think_color, labels = colnames_mid[2:8] ) +
  scale_y_continuous(breaks = seq(0, 100, by = 10)) +
  theme_bw()

ggsave("plot3.png", width = 8, height = 6, dpi = 300)


data_think_perYear <- data_think %>%
  mutate(year = year(date)) %>%
  group_by(year) %>%
  summarize(
    lrgCon_mean = mean(lrgCon),
    smllCon_mean = mean(smllCon),
    hungCon_mean = mean(hungCon),
    hungLab_mean = mean(hungLab),
    smllLab_mean = mean(smllLab),
    lrgLab_mean = mean(lrgLab),
    DK_mean = mean(DK)
  )
# View the summary statistics
data_think_perYear <- round(data_think_perYear)
#save data_perYear as txt file
write.table(data_think_perYear, file = "data_think_perYear.txt", sep = ",", row.names = FALSE)

