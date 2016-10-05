## The two functions create a matrix object that can store along the matrix
## inverse. The inverse is calculated and stored with the cacheSolve function.

## The function makeCacheMatrix creates a new matrix type element
## that can store the inverse of the matrix along with the data values


makeCacheMatrix <- function(x = matrix()) {
        inv <- matrix(ncol=3, nrow=3)
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


## The cacheSolve function first checks if the inverse of the matrix
## Element was already calculated. If so, it will return the inverse
## the matrix, if not, it will calculate it and return it.


cacheSolve <- function(x = matrix(), ...) {
        inv<- x$getinvers()
        if(sum(!is.na(inv))>0){
            message ("getting cached data")
            return(inv)
        }
        data <- x$get()
        print("calculating")
        inv <- solve(data)
        x$setinverse(inv)
        inv
        
}
