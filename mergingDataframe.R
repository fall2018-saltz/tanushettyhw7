
arrests <- USArrests

rownames(clean_data) <- as.vector(clean_data[,"stateName"])

mergeDataframe <- merge(clean_data,arrests, by="row.names")
mergeDataframe

stateName <- state.names
