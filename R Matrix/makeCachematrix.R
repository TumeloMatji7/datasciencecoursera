
## this is my matrix function
makeCachematrix <- function(x = matrix()) {
  
  ## assignment of NULL TO inv
  inv <-  NULL
  
  ## created a  set function
  set <- function(y) {
      x <<- y
      inv <<- NULL
  }
  ## get function
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse }
  
  ## get inverse using inv
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## Function called cachesolve
cachesolve <- function(x, ...) {
  inv <- x$getInverse()
  
  if(!is.null(inv)) {
    message("get cached data")oma
    return(inv)pmat
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
 inv 
}
