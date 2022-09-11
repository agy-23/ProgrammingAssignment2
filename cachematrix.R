## Put comments here that give an overall description of what your
## functions do

## makes a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(a){
                x<<-a
                b<<-NULL
        }
        get <- function()x
        setInverse <- function(inverse) b <<- inverse
        getInverse <- function() b
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
                

}


## computes the inverse of the matrix made by the function above

cacheSolve <- function(x, ...) {
        b <- x$getInverse()
        if(!is.null(b)) {
                message("getting cached data")
                return(b)
        }
        m <- x$get()
        b <- solve(m, ...)
        x$setInverse(b)
        b
}
