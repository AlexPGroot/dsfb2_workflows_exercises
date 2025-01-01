library(here)
library(rmarkdown)
library(tidyverse)
library(vcdExtra)

# load bathy dataset from marmap
param_list <-
  vcdExtra::datasets("marmap") %>% filter(class == "bathy") %>% select(Item)

for(data_input in param_list$Item){
  
  input_file <- here::here("ocean_floor.qmd")
  output_file <- paste0("009_param_", data_input, ".html")
  output_dir <- paste0("_site")
  
  rmarkdown::render(
    input = input_file,
    params = list(data = data_input),
    output_file = output_file,
    output_dir = output_dir
  )}