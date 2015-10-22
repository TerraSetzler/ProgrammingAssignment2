## x = matrix() forces the input into a matrix
## First this function is able to change x in the saved variable, if we decide to change x
## Then if that happens m will be set to NULL through the whole makeCacheMatrix function
## That will NULL any previous caches
## Then get will show x as it is now
## Setinverse does not calculate the inverse but rather stores the calculation if it happens in another function
## Getinverse will return the inverse if it has been stored
## Finally a list is created and stores these values


makeCacheMatrix <- function(x = matrix()) {
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## 

cacheSolve <- function(x, ...) {
     
   ## Return a matrix that is the inverse of 'x'
}
