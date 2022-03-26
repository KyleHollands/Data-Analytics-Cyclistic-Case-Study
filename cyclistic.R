# Load the required libraries
library(tidyverse)
library(janitor)
library(readr)
library(tidyr)
library(chron)
library(plyr)
library(dplyr)
library(readr)

# Import and combine twelve months of data into one dataset
combined_trip_data <- list.files(path = "./Datasets/Modified CSV Files",  # Identify all CSV files
  pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                              # Store all files in list
  bind_rows                                         # Combine data sets into one data set 

# Review the data
glimpse(combined_trip_data)

# Trim the dataset to only include the most relevant information
trimmed_trip_data <- combined_trip_data %>%
  select(rideable_type, ride_length, day_of_week, member_casual)

glimpse(trimmed_trip_data)

# Determine which columns/rows contain the most NA's.
sapply(trimmed_trip_data, function(x) sum(is.na(x)))

# Remove rows
cleaned_trip_data <- na.omit(trimmed_trip_data)

sapply(cleaned_trip_data, function(x) sum(is.na(x)))
glimpse(trimmed_trip_data)

# Calculate initial statistics for casual riders

cleaned_trip_data %>%
  filter(member_casual == "casual",) %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            median_ride_length = median(ride_length),
            max_ride_length = max(ride_length))

# Calculate initial statistics for members.

cleaned_trip_data %>%
  filter(member_casual == "member") %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            median_ride_length = median(ride_length),
            max_ride_length = max(ride_length))

# Trim data to remove obscure ride lengths.
cleaned_trip_data <- cleaned_trip_data[cleaned_trip_data$ride_length < 10800, ]
cleaned_trip_data <- cleaned_trip_data[cleaned_trip_data$ride_length > 60, ]

glimpse(cleaned_trip_data)

cleaned_trip_data %>%
  filter(member_casual == "casual") %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            median_ride_length = median(ride_length),
            max_ride_length = max(ride_length))

cleaned_trip_data %>%
  filter(member_casual == "member") %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            median_ride_length = median(ride_length),
            max_ride_length = max(ride_length))

# Determine which day is the most popular, what the most popular bike is,
# and whether members or casual riders are in the majority.
table(cleaned_trip_data$member_casual)
table(cleaned_trip_data$rideable_type)
table(cleaned_trip_data$day_of_week)

# Compare day of week vs rider type.
table(cleaned_trip_data$day_of_week,
cleaned_trip_data$member_casual)

table(cleaned_trip_data$member_casual,
cleaned_trip_data$rideable_type)

table(cleaned_trip_data$ride_length,
cleaned_trip_data$day_of_week)