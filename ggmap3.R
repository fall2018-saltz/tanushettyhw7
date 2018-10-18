
library("ggplot2")
library("ggmap")

us <- map_data("state")

ggmap3 <- ggplot(mergeDF, aes(map_id = stateName)) 

ggmap3 <- ggmap3 + geom_map(map = us, aes(fill=Murder))+ scale_fill_gradient(low="white",high="red")


