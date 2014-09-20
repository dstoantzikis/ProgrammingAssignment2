## With makeCacheMatrix we construct a matrix useful to our

##next function in order to produce an inversion 

makeCacheMatrix <- function(x = matrix()) { 
                m<-NULL
                set<-function(y)
                x<<-y
                m<<-NULL
}

                get<-function() x
                setinverse<- function(inverse) m<<-inverse
              
                getinverse<-function () m
                list(set=set, get=get,
                     setinverse = setinverse
                     )
## This function calculates the inverse of a vector using:
                cacheSolve<-function(x,...) {
                  m<-x$getinverse()
                  if(!is.null(m)){
                    message("getting cached data")
                    return(m)
                  }
                  data<-x$get()
                  m<-solve(data,...)
                  x$setinverse(m)
                  m}
                

