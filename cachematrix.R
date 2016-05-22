## Put comments here that give an overall description of what your
## functions do

## set, set the value of the matrix
## get, get the value of the matrix
## setmatrix, set the inverse of the matrix
## getmatrix, get the inverse of the matrix

## Write a short comment describing this function
## make CacheMatrix is a list of four functions
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function()x
setmatrix <- function(solve)m<<-solve
getmatrix <- function(m)
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getmatrix()
if(!is.null(m)){
  message("getting cached data")
  return(m)
          }
  data <- x$get()
  m <- solve(data,...)
  x <- getmatrix(m)
  m
  }
