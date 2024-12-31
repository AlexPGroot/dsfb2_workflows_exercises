library(vcdExtra)
vcdExtra::datasets("marmap")
rmarkdown::render(input = "dsfb2_workflows_exercises/data_raw/data_0090/ocean_floor.Rmd")

for (x in data) {
  rmarkdown::render(input = "dsfb2_workflows_exercises/data_raw/data_0090/ocean_floor.Rmd", params = data)
} 


# fruits <- list("apple", "banana", "cherry")
# 
# for (x in fruits) {
#   print(x)
# } 