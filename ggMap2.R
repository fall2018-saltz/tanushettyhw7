
library("ggplot2")
library("ggmap")

us <- map_data("state")

map2 <- ggplot(mergeDF, aes(map_id= stateName))

