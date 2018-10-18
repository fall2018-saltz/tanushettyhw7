
clean_data <- function(dfStates1){
    dfStates1 <- dfStates1[,-c(1:4)]
    dfStates1 <- dfStates1[c(-1,-53),]
    
    colnames(states)[c(1,2,3,4)] <- c("stateName","population","popOver18","percentOver18")
}
