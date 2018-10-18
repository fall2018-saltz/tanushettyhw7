
library("ggplot2")
library("ggmap")

us<- map_data("state")


map1 <- ggplot(mergeDF, aes(map_id = stateName)


map1 <- map1 + geom_map(map=us, aes(fill=stateName)

map1 <- map1 + expand_limits(x = mergeDF$x, y=mergeDF$y)
