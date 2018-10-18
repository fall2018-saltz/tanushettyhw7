
library("ggplot2")
library("ggmap")

us <- map_data("state")

map2 <- ggplot(mergeDF, aes(map_id= stateName))

map2 <- map2 +geom_map(map =us, aes(fill = Murder))

map2 <- map2+ expand_limits(x = mergeDF$x, y=mergeDF$y)

map2 <- map2 + coord_map() + ggtitle("Map of US based on murder rate of states")

