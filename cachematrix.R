#1.  `makeCacheMatrix`: This function creates a special "matrix" object
   # that can cache its inverse.
### Assignment: Caching the Inverse of a Matrix
## makeCacheMatrix: These functions is used to demostrated the use and importance 
# #of LEXICAL SCOPE in R. The function create special "matrix" object
#and cache its inverse.Submitted by merilio morell
## The function create special "matrix" object and cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

#2.  `cacheSolve`:
## This function uses the  functions cache in the "makeCacheMatrix" above and 
##find use the stored data if the imput is the same already used, if not it evaluate
the imput (matrix) and return its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return (m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
  }

