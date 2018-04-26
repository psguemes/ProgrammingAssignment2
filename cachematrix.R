## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function: this function' goal is to create a matrix object
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
      x <<- y
      inv <<- NULL
}
      get <- function() x
      setInverse <- function(inverse) inv <<- inverse
      getInverse <- function() inv
      list(set = set,
            get = get,
            setInverse = setInverse,
            getInverse = getInverse)

}


## Write a short comment describing this function: this function is used to calculate the inverse
## of the matrix create above.

cacheSolve <- function(x, ...) {## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if (!is.null(inv)) {
            message("getting cached data")
            return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
        ## Return a matrix that is the inverse of 'x'
}

