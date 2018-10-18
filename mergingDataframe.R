
#Copying USArrests into a local variable
arrests <- USArrests

#Using rownames to create a column
rownames(clean_data) <- as.vector(clean_data[,"stateName"])

#Merging the dataframes with attributes from both dataframes
mergeDF <- merge(clean_data,arrests, by="row.names")
mergeDF


stateName <- state.name
stateArea <- state.area

#getting coordinates of the centers of all states
stateCenter <- state.center

#merging the datasets to form a dataframe
mergedData <- data.frame(stateName,stateArea, stateCenter)

#Creating a dataset to merge columns of arrest and states 
mergeDF <- merge(mergeDF, mergedData,by="stateName")

#tolower converts the state names to lower case because R cannot process capital letters
mergeDF$stateName <- tolower(mergeDF$stateName)
