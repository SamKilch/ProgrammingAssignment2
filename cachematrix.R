## The function makeCacheMatrix creates a new matrix type element
## that can store the inverse of the matrix along with the data values

## The cacheSolve function first checks if the inverse of the matrix
## Element was already calculated. If so, it will return the inverse
## the matrix, if not, it will calculate it and return it.

## The function makeCache will create a new object, set the inverse to NULL
##

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
            x<<-y
            inv<<-NULL
        }
        get <- function()x
        setinverse <- function(inverse)inv<<-inverse
        getinverse <- function()inv
        list(set = set, get = get,
             setinverse = setinverse, 
             getinvers=getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv<- x$getinvers()
        if(!is.null(inv)){
            message ("getting cached data")
            return(m)
        }
        data <- x$get()
        inv <- solve(x)
        x$setinverse(inv)
        inv
}
