## Put comments here that give an overall description of what your
## functions do

## The function makeCachematrix stores a list of functions...
## Set a matrix 
## Get (print) a matrix 
## Calculate the inverse of a matrix 
## Gets the inverse a Matrix 

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(Y) {
    x <<- Y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## The function cacheSolve returns the inverse of a matrix if it is cached and calculates the inverse otherwise

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setinv(i)
  i
}
