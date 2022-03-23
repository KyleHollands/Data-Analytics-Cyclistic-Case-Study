# Load the required libraries
library(tidyverse)
library(janitor)
library(readr)
library(tidyr)
library(chron)
library(plyr)
library(dplyr)
library(readr)

# Import and combine twelve months of data into one
combined_trip_data <- list.files(path = "./Datasets/Modified CSV Files",  # Identify all CSV files
  pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                              # Store all files in list
  bind_rows                                         # Combine data sets into one data set 

# Review the data
#View(combined_trip_data)
glimpse(combined_trip_data)

# Trim the dataset to only include the most relevant information
trimmed_trip_data <- combined_trip_data %>%
  select(rideable_type, ride_length, day_of_week, member_casual)

# Split the date columns into data and times.
trimmed_trip_data <- combined_trip_data %>%
  separate(started_at, c("started_at_date", "started_at_time"), sep = " ")
trimmed_trip_data <- combined_trip_data %>%
  separate(ended_at, c("ended_at_date", "ended_at_time"), sep = " ")

glimpse(trimmed_trip_data)

# Determine which columns/rows contain the most NA's.
sapply(trimmed_trip_data, function(x) sum(is.na(x)))

# Remove rows
trimmed_trip_data <- na.omit(trimmed_trip_data)
sapply(trimmed_trip_data, function(x) sum(is.na(x)))

glimpse(trimmed_trip_data)
