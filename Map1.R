
library("ggplot2")
library("ggmap")

us<- map_data("state")


map1 <- ggplot(mergeDF, aes(map_id = stateName)
