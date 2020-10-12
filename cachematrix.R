## These functions is used to demostrated the use and importance 
# #of LEXICAL SCOPE in R. The function create special "matrix" object
#and cache its inverse.Submitted by merilio morell

## The function create special "matrix" object and cache its inverse.

## Write a short comment describing this function

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


## Write a short comment describing this function
 ## Return a matrix that is the inverse of 'x'
 ## This function uses the  functions cache in the "makeCacheMatrix" above and 
 ##find use the stored data if the imput is the same already used, if not it evaluate
#the imput (matrix) and return its inverse 

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return (m)
        
}

