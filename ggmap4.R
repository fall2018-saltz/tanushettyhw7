
library("ggplot2")
library("ggmap")

us <- map_data("stage")

latlon <- geocode("new york city,ny", source="dsk")
y1 <- latlon$lat-10
x1 <- latlon$lat-10
x2 <- latlon$lat+10
y2 <- latlon$lat+10

ggmap4 <- ggplot(mergeDF,aes(map_id = stateName))+ geom_map(map=us,(fill=Murder))

ggmap4 <- ggmap4 + scale_fill_gradient(low="white",high="red")+xlim(c(x1,x2))+ylim(c(y1,y2))
