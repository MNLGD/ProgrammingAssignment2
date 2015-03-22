best <- function(state, outcome){
  # Read outcome data
  outcome1 <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
  if(!state %in% outcome1$State){
    stop("invalid state")
    
  }
  if(!outcome %in% c("heart attack","heart failure","pneumonia"))
   stop("invalid outcome")
   hospitals <- vector()
  hold <- subset(outcome1,outcome1$State==state )
#if(outcome == "heart failure") #11
# {
    hold[,17]<- as.numeric(hold[,17])
   d<- hold[,17]
c <- d[complete.cases(d)]
  minval<- min(c)
   holdb <- subset(hold, hold[,17]==minval)
 # hospitals <-!is.na(holdb$Hospital.Name)
# }
 #sort(hospitals, decreasing = FALSE)
  #hospitals
 # minval
#hospitals
holdb

  
}