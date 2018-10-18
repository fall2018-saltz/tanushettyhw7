
arrests <- USArrests

rownames(clean_data) <- as.vector(clean_data[,"stateName"])

mergeDataframe <- merge(clean_data,arrests, by="row.names")
mergeDataframe

stateName <- stateNames
stateArea <- stateArea

stateCenter <- stateCenter

otherDF <- data.frame(stateName,stateArea, stateCenter)

mergeDataframe <- merge(mergeDataframe,otherDF,by="stateName")

mergeDataframe$stateName <- tolower(mergeDataframe$stateName)
