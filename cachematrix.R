## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## COMMENT: using this function provides you a list of the value of 
## matrix x,setting and getting the value of variable s for inverse matrix 
## of x(when initiated s will be NULL)
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  get <- function() x
  setinv <- function(solve) s <<- solve
  getinv <- function() s
  list(get = get, setinv = setinv, 
       getinv = getinv)
}


## Write a short comment describing this function

## COMMENT: the function will return inverse matrix of x, and when called twice
## it can tell whether the matrix has been inversed or not, if inversed, it will
## return the inversed value instead of the inversed 'inversed' one(i.e. matrix x)
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getinv()
  if(!is.null(s)) {
    message('getting cached data')
    return(s)
  }
  m <- x$get()
  s <- solve(m,...)
  x$setinv(s)
  s
}
