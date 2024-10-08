#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Charlie Zhang
# Date: Sep 19th, 2024
# Contact: zqycharlie.zhang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None



#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
package

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()
data

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "./data/raw_data/raw_data.csv") 

         
