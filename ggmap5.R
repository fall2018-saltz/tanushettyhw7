
library("ggplot2")
library("ggmap")

us <- map_data("state")

#getting the latitude and longitude of an address
latlon <- geocode("new york city,ny", source="dsk")
y1 <- latlon$lat-10
x1 <- latlon$lon-10
x2 <- latlon$lon+10
y2 <- latlon$lat+10

#Zoomed in Murder rate in each state
ggmap5 <- ggplot(mergeDF,aes(map_id = stateName))
+geom_map(map=us, aes(fill=Murder))
+ xlim(c(x1,x2))+ylim(c(y1,y2)
+ expand_limits(x=us$long,y=us$lat)+coord_map()

ggmap5

