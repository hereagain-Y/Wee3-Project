## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     re<-NULL
     set<-function(y){
         x<<-y
         inv<<-NULL
       }
     get<-function() x
     set_inverse<-function(inverse) re<<-inverse
     get_inverse<-function() re
     list(set=set,get=get,set_inverse=set_inverse, get_inverse=get_inverse)
     
     
     }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 re <- x$get_inverse()
  if(!is.null(re)){
    message("getting cached data")
    return(re)
  }
  data <- x$get()
  re <- solve(data)
  x$set_inverse(re)
  re     
}
######create to validate
ma<-matrix(c(1:4),2,2)
mb<-solve(ma)
mobject<-makeCacheMatrix(ma)
cacheSolve(mobject)
