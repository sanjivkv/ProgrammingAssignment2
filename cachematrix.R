## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Create Caches Matrix and use the Solve Function for the Inverse 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse
       )
}


## Write a short comment describing this function
## The CacheSolveFunction tries to return from Cache if Inverse is already done

cacheSolve <- function(x, ...) {
  m<-x$getInverse
  if(!is.null(m)){
    message("Getting Cached Data")
    return(m)
    data<-x$get()
    m<-solve(data,...)
    x$setInverse(m)
    m
  }
        ## Return a matrix that is the inverse of 'x'
}
