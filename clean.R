
clean_data <- function(dfStates1){
    dfStates1 <- dfStates1[,-c(1:4)]
    dfStates1 <- dfStates1[c(-1,-53),]
    
    colnames(dfstates1)[c(1,2,3,4)] <- c("stateName","population","popOver18","percentOver18")
    return(dfStates1)
}

clean_data <- clean_data(raw_data)
