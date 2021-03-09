## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes a metrix and stores it.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatrix <- function(matrix) m <<- matrix
  getMatrix <- function() m
  list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
  
  
}


## Write a short comment describing this 

## cacheSolve takes a makeCacheMatrix variable and calculates the inverse of the matrix.
## if the inverse already exists it gives back the cache of it.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setMatrix(m)
  m
}
