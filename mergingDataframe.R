
#Copying USArrests into a local variable
arrests <- USArrests

#Using rownames to create a column
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

mergeDF <- merge(clean_data,arrests, by="row.names")
mergeDF

stateName <- state.name
stateArea <- state.area

stateCenter <- state.center

mergedData <- data.frame(stateName,stateArea, stateCenter)

mergeDF <- merge(mergeDF, mergedData,by="stateName")

mergeDF$stateName <- tolower(mergeDF$stateName)
