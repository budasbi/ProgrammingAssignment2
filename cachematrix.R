## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This create a vector of function where we can assign the mean value or calculate and assign to InverseV
##That variable stores the inverse of the matrix cached amd calculated in the setInverse Function.
makeCacheMatrix <- function(x = matrix()) {
        InverseV<-NULL
          set<-function(y){
            InverseV<<-NULL
            x<<-y
          }
          get<-function(){
            x
          }
          setInverse<-function(solve){
            InverseV<<-solve
          }
          getInverse<-function(){
            InverseV
          }
          list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
#This funcion search if there is a cached value of the inverse matrix if it find it, it return it
# if the Inverse it is not cached it calculate, then store the calculated value in the cache
#then it shows the inverse of the Matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
              InverseV<-x$getInverse()
              if(!is.null(InverseV)){
                message("Getting cached Inverse, Please Wait")
                return(InverseV)
              }
          matrix<- x$getInverse()
          InverseV <- solve(matrix)
          x$setInverse(InverseV)
          InverseV
}
#Solved by Oscar Sierra For Coursera. Programming assigment 2
