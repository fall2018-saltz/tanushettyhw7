
arrests <- USArrests

rownames(clean_data) <- as.vector(clean_data[,"stateName"])

mergeDF <- merge(clean_data,arrests, by="row.names")
mergeDF

stateName <- stateNames
stateArea <- stateArea

stateCenter <- stateCenter

otherDF <- data.frame(stateName,stateArea, stateCenter)

mergeDF <- merge(mergeDF,otherDF,by="stateName")

mergeDF$stateName <- tolower(mergeDF$stateName)
