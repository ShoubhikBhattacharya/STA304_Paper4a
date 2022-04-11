#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Rohan Alexander [CHANGE THIS TO YOUR NAME!!!!]
# Data: 3 January 2021
# Contact: rohan.alexander@utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?

#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
library(pdftools)
library(readr)
library(dplyr)

# Read in the raw data. 
raw_data <- readr::read_csv("Turkey1998.csv"
                     )
df <- readr::read_csv("Mageatbirth.csv")
df
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)
raw_data

df1 <- raw_data[2:5,]
df1

bp <- ggplot(df, aes(x = "Mothers age at birth", y = df$`Number of births`,
                     fill=df$`Mothers Age at Birth`))+
  geom_col( width = 1)
bp

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####



         