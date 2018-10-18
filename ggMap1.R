
#Importing library fo ggplot and ggmap
library("ggplot2")
library("ggmap")

#converting data from the maps package into a dataframe 
us<- map_data("state")

#Creating a ggplot object and passing mergeDF as the input with map ID as the statename
#Creating a map visualization withgeom_map
ggmap1 <- ggplot(mergeDF, aes(map_id = stateName))  + geom_map(map= us, aes(fill=stateArea))

#Defining the x and y axis values of the map 
#coord_map balances the distortion and aspect ratio of the ggmap1
#ggtitle() gives a title to the map
ggmap1 <- ggmap1 + expand_limits(x = mergeDF$x, y=mergeDF$y) + coord_map() + ggtitle("Map of US based on state area")


ggmap1
