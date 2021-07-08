## This function stores the input matrix by the user and return the inverse of 
## the matrix.If the inverse already exists, the inverse is called from the 
## cache memory

## makeCachematrix function takes in the matrix provided by the user and saves 
## it in variable x. 4 more functions are nested inside the makeCacheMatrix 
## function, namely, setmatrix() [sets the value of the matrix], getmatrix()- 
## [returns the matrix], setinv()- [creates the inverse of the matrix inputted 
## by the user], getinv()- [returns the value of the inverse matrix]

makeCacheMatrix <- function(x = matrix()) {
  inv <<- NULL
  setmatrix <- function() {
    x <<- y
    inv <<- NULL
  }
  getmatrix <- function() {
    return(x)
  }
  setinv <- function(inverse) {
    inv <<- inverse
  }
  getinv <- function() {
    inv
  }
  list(
    setmatrix = setmatrix,
    getmatrix = getmatrix,
    setinv = setinv,
    getinv = getinv
  )
}


## The following function now calculates the inverse of the matrix using solve()

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if (!is.null(inv)) {
    message("getting inverse of matric (x)")
    return(inv)
  }
  inverse <- x$getmatrix()
  inv <- solve(inverse, ...)
  x$setinv(inv)
  inv
}
