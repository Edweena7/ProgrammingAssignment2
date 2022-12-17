## Make a Cached  inverse Matrix 


## this function creates the inverse of a matrix and a cached form
## inv here stands for inverse
## solve function is used to get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
     set <- function(y) {
         x <<- y
         i <<- NULL
       }
    get <- function() x
     setinv <- function(solve) i <<- solve
     getinv <- function() i
     list(set = set, get = get,
                  setinv = setinv,
                  getinv = getinv)
}


## to pull the cached function and if not available find the 
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  i <- x$getinv()
    if(!is.null(i)) {
        message("getting cached data")
         return(m)
     }
    data <- x$get()
     m <- solve(data, ...)
     x$setinv(i)
    i
}
