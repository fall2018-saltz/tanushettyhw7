
clean_data <- function(dfStates1){
    dfStates1 <- dfStates1[,-c(1:4)]
    dfStates1 <- dfStates1[c(-1,-53),]
}
