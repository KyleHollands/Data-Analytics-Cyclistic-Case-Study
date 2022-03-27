# Load the required libraries
library(tidyverse)
library(janitor)
library(readr)
library(tidyr)
library(chron)
library(dplyr)
library(readr)
library(lubridate)

# Import and combine twelve months of data into one dataset
combined_trip_data <- list.files(path = "./Datasets/Modified CSV Files",  # Identify all CSV files
  pattern = "*.csv", full.names = TRUE) %>% 
  lapply(read_csv) %>%                              # Store all files in list
  bind_rows                                         # Combine data sets into one data set

# Rename columns to be more readable and self-explanatory
(combined_trip_data <- rename(combined_trip_data
                   ,trip_id = ride_id
                   ,start_time = started_at
                   ,end_time = ended_at
                   ,from_station_name = start_station_name
                   ,from_station_id = start_station_id
                   ,to_station_name = end_station_name
                   ,to_station_id = end_station_id
                   ,usertype = member_casual))

# Trim the dataset to only include the most relevant information
trimmed_trip_data <- combined_trip_data %>%
  select(-c(start_lat, start_lng, end_lat, end_lng))

# Inspect the data

colnames(trimmed_trip_data)
glimpse(trimmed_trip_data)
nrow(trimmed_trip_data)
dim(trimmed_trip_data)
head(trimmed_trip_data)
tail(trimmed_trip_data)
summary(trimmed_trip_data)
str(trimmed_trip_data)

# Determine which columns/rows contain the most NA's.
sapply(trimmed_trip_data, function(x) sum(is.na(x)))

# Remove any rows where ride length <= 0 seconds and greater than 3 hours.
cleaned_trip_data <- trimmed_trip_data[!(trimmed_trip_data$ride_length <= 0 | trimmed_trip_data$ride_length >= 10800),]
glimpse(cleaned_trip_data)
sapply(cleaned_trip_data, function(x) sum(is.na(x)))

# Remove rows with NAs.
cleaned_trip_data <- na.omit(cleaned_trip_data)
glimpse(cleaned_trip_data)

sapply(cleaned_trip_data, function(x) sum(is.na(x)))
glimpse(cleaned_trip_data)

# Calculate initial statistics for casual riders

cleaned_trip_data %>%
  filter(usertype == "casual", ) %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            max_ride_length = max(ride_length))

# Calculate initial statistics for members.

cleaned_trip_data %>%
  filter(usertype == "member") %>%
  summarize(min_ride_length = min(ride_length),
            average_ride_length = mean(ride_length),
            max_ride_length = max(ride_length))

glimpse(cleaned_trip_data)

# Determine which day is the most popular, what the most popular bike is,
# and whether members or casual riders are in the majority.
table(cleaned_trip_data$usertype)
table(cleaned_trip_data$rideable_type)
table(cleaned_trip_data$day_of_week)

# Compare day of week vs rider type.
table(cleaned_trip_data$day_of_week,
cleaned_trip_data$usertype)

# Compare rider type vs type of bike.
table(cleaned_trip_data$usertype,
cleaned_trip_data$rideable_type)


# Descriptive analysis on ride_length
mean(cleaned_trip_data$ride_length) #straight average (total ride length / rides)
median(cleaned_trip_data$ride_length) #midpoint number in the ascending array of ride lengths
max(cleaned_trip_data$ride_length) #longest ride
min(cleaned_trip_data$ride_length) #shortest ride

# Compare members and casual users
aggregate(cleaned_trip_data$ride_length ~ cleaned_trip_data$usertype, FUN = mean)
