
## This functin creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinverse<-function(solve) m<<- solve
  getinverse<-function() m
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
#The following function computes the inverse of the special "matrix" object created in the above function. 
#However, it first checks to see if the inverse function has already been generate. 
#If so, it gets the inverse matrix from the cache and skips the computation. 
#Otherwise, it calculates the inverse of the supplied matrix and sets the value of the inverse 
#in the cache via the setinverse function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m<- x$getinverse()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    
    matrix <-x$get()
    m <- solve(matrix)
    x$setinverse(m)
    m
}
