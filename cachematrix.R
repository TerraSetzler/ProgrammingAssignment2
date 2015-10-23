## x = matrix() forces the input into a matrix
## First this function is able to change x in the saved variable, if we decide to change x
## Then if that happens m will be set to NULL through the whole makeCacheMatrix function
## That will NULL any previous caches
## Then get will show x as it is now
## Setinverse does not calculate the inverse but rather stores the calculation if it happens in another function
## Getinverse will return the inverse if it has been stored
## Finally a list is created and stores these values


makeCacheMatrix <- function(x = matrix()) {
  inv <- NA
  set <- function(y) {
    x <<- y
    inv <<- NA
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## cachesolve takes input x
## cache matrix looks to see if there is a value stored in the subset which is in the list as getinverse
## Either a cached matrix, or NULL has been assigned to m
## If it is NULL, the if function will not run and it will continue down
## If it is not a null it will throw a message, return m, and skip the rest of the code
## If it progressed, it will find the current stored value of x using get
## Then 


cacheSolve <- function(x) {
  inv <- x$getinverse()
  if(!is.na(inv)) {
    message("getting cached matrix")
    return(inv)
  }
  xinv <- solve(x$get())
  x$setinverse(xinv)
  xinv
}

