#This function returns a list of the following functions:
  # 1. set the matrix
  # 2. retrieve the matrix
  # 3. Retrieve the inverse of the matrix
  # 4. Retreive the cached inverse of a matrix
makeMatrix <- function() {
  #1
  x = matrix()
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  #2
  get <- function() x
  
  #3
  setinverse <- function(inverse) m <<- inverse
  
  #4
  getinverse <- function() m
  
  # return a list of the functions
  list( set = set,get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

# This function does the following
  #1. Check if cached values of the inversed matrix are available using makeMatrix
  #2. Inverse the matrix if not cached and cache the values using makeMatrix

cacheinverse <- function(x, ...) {
  #1
  m <- x$getinverse()
  if(!is.null(m)) {
    message("get cached data")
   }
  
  #2
  x$set(mat)
  data <- x$get()
  
  #inverse the matrix 
  m <- solve(data, ...)
  x$setinverse(m)
}

#create a 10x10 matrix
set.seed(123)
uniRndNumbers = rnorm(100)
mat = matrix(uniRndNumbers, nrow=10, ncol=10)

#initialize functions to cache
lstFuns = makeMatrix()

# inverse matrix 
cacheinverse(lstFuns)
#print matrix
lstFuns$get()

# retreive cached values of inversed matrix
cacheinverse(lstFuns)
#print matrix
lstFuns$get()





