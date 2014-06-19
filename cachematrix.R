## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function is used to setup the cache location by initializing the matrix  
## and the inverse matrix

makeCacheMatrix <- function(x = matrix()) 
{			i <- NULL 
		## The inverse matrix is initialized

		## The following set function is used to assign the values to 
		## the matrix

			set <- function (x1)
			{		x <<- x1

			## The <<- symbol is used to assign values to the matrix 					## in a environment different from the current one

			}

		## The following get function is used to retrieve the values of 
		## the matrix
			get <- function() x		

		## The setinv function is used to assign the inversed matrix 
		##  value to the matrix in the cache which was intialized to NULL	
			setinv <- function(inv) i <<- inv
		
		## The getinv function is used to retrieve the inverse matrix
		##  data from cache
			getinv <- function() i
		
		## The following list is the list that is used to link the  
		## functions to the pointer that the makeCachematrix() 
		## function was called upon
			list (set = set, get = get,
				setinv = setinv,
				getinv = getinv) 
			
}



## Write a short comment describing this function
## This function has two functionalities. It calls the cache inverse matrix data if the cache
## contains the data. Otherwise is calculates the inverse matrix and assigns the value to the 	## cache inverse matrix (i) 
	
cacheSolve <- function(x, ...)
{
		## The following getinv() function is used to get the inverse 
		## cache matrix to check if the cache contains the values of 
		## the inverse matrix
	
			i<- x$getinv()

		## If the cache inverse matrix is not null. It means that it 
		## contains the inverse matrix data and the message and the 
		## matrix is returned/displayed
			if(!is.null(i))
			{	message("Retrieving Inverse matrix data from cache")
				return(i)
			}

		## Else, the original matrix that has to be inverse is retrived
			data <- x$get()
		
		## The solve function is used to compute the inverse of the matrix
			i <- solve(data, ...)

		## The inverse matrix is then saved in the cache using 
		## setinv() function
		## The inverse matrix is also displayed / printed
			x$setinv(i)
			i			  
}


 
