## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inverse <- NULL
  set <- function(var) {
    x <<- var;
    inverse <<- NULL;
  }
  get <- function() return(x);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinv()
  if(!is.null(inverse)) {
    message("getting cached data....")
    return(inverse)
  }
  data <- mtx$get()
  inverse <- solve(data, ...)
  x$setinv(inverse)
  return(inverse)
}
