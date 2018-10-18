
library("ggplot2")
library("ggmap")

us <- map_data("state")

#getting the latitude and longitude of an address
latlon <- geocode("new york city,ny", source="dsk")
y1 <- latlon$lat-10
x1 <- latlon$lon-10
x2 <- latlon$lon+10
y2 <- latlon$lat+10


ggmap4 <- ggplot(mergeDF,aes(map_id = stateName))+ geom_map(map=us, color="white")
ggmap4 <- ggmap4 + xlim(c(x1,x2))+ylim(c(y1,y2))
ggmap4 <- ggmap4 + expand_limits(x=us$long,y=us$lat)+coord_map()
#size attribute controls the size of the points
ggmap4 <- ggmap4 + geom_point(data=mergeDF,mapping=aes(x=x,y=y,size=population))

ggmap4
