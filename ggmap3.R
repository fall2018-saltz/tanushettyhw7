
library("ggplot2")
library("ggmap")

us <- map_data("state")

ggmap3 <- ggplot(mergeDF, aes(map_id = stateName)) 


