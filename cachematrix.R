## Put comments here that give an overall description of what your
## functions do

## The "makecachematrix" function creates a matrix that can cache its
## inverse. It sets & gets the value of the vector, and sets & gets 
## value of the inverse.

makecachematrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## The "cachesolve" function will solve the inverse of a matrix, but 
## first it will check to see if it has been done before and cached 
## in "i". If the inverse has been previously cached, R Studio will
## try to act all hip and trendy with a "cool" response and print 
## the contents of "i," but we all know R Studio isn't fooling anyone.

cachesolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("Getting Cached Data in the Hizzouse, Yo :)")
                return(i)
        }
        data <- x$get()
        i <- Inverse(data, ...)
        x$setinverse(i)
        i

        
        ## Return a matrix that is the inverse of 'x'
}
