
#importing library for ggplot and ggmap
library("ggplot2")
library("ggmap")

#Converting data from the maps package into a data frame suitable for plotting with ggplot2
us <- map_data("state")

#Creating a map visualization 
ggmap3 <- ggplot(mergeDF, aes(map_id = stateName)) 

#Defining the x and y axis values of the map and 
#coord_map balances the distortion and the aspect ratio of the map
ggmap3 <- ggmap3 + geom_map(map = us, aes(fill=Murder))+ scale_fill_gradient(low="white",high="red")


ggmap3 <- ggmap3 + expand_limits(x=us$long, y=us$lat) + coord_map()

ggmap3 <- ggmap3 + geom_point(data=mergeDF, mapping=aes(x=x,y=y,size=population))

ggmap3



