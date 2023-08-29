## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(matrix) {
        m<<-matrix
        inv<<-NULL
get<-function() m
getInverse<-function () inv
setInverse<-function(inverse) inv<<-inverse
list(set=set,get=get, getInverse=getInverse, setInverse=setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inv<-matrix$getInverse() 
 if(!is.null(inv)) {
        message("getting cached inverse")
        return(inv)
 }
        mat<-matrix$get()
        new_inv<-solve(mat)
        matrix$setInverse(new_inv)
        new_inv
}
