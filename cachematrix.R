## This script to create two functions that cache the inverse of a matrix

## Creates a matrix object that can cache its inverse
makeCacheMatrix <- function( m = matrix() ) {

  ## set default value to initialize the inverse variable
  i <- NULL
  
  ## assign the matrix to s
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  
  ## Return the list of variables
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Compute the inverse of the matrix returned by "makeCacheMatrix" results

cacheSolve <- function(mtrx, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  
  ## if the matrix already inversed then return a massage
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## the matrix from our object into data if not inversed
  data <- x$get()
  
  ## Calculate the inverse into m
  m <- solve(data) %*% data
  
  ## assign the inverse to m
  x$setInverse(m)
  
  ## Return the matrix
  m
}
