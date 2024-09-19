#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Charlie Zhang
# Date: Sep 19th, 2024
# Contact: zqycharlie.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("./data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NA
any(is.na(data$number_of_marriage))
