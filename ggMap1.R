
library("ggplot2")
library("ggmap")

us<- map_data("state")


ggmap1 <- ggplot(mergeDF, aes(map_id = stateName))  + geom_map(map= us, aes(fill=stateName))


ggmap1 <- ggmap1 + geom_map(map=us, aes(fill=stateName) + expand_limits(x = mergeDF$x, y=mergeDF$y) + coord_map() + ggtitle("Map of US based on state area"))

ggmap1
