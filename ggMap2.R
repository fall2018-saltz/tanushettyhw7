
library("ggplot2")
library("ggmap")

us <- map_data("state")

ggmap2 <- ggplot(mergeDF, aes(map_id= stateName))

#Creating a map visualiation based on murder rate of each state
ggmap2 <- ggmap2 +geom_map(map =us, aes(fill = Murder))

ggmap2 <- ggmap2+ expand_limits(x = mergeDF$x, y=mergeDF$y)

ggmap2 <- ggmap2 + coord_map() + ggtitle("Map of US based on murder rate of states")

ggmap2

