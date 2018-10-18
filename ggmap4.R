
library("ggplot2")
library("ggmap")

us <- map_data("stage")

latlon <- geocode("new york city,ny", source="dsk")
