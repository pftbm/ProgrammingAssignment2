## Assignement 2 - Caching time consuming functions results.


## Write a short comment describing this function

makeCacheMatrix <- function(A = matrix()) {

	A.inv <- NULL
    
    get_Matrix_A <- function(){
        A
    }
    
    set_A.inv <- function(inv){
        A.inv <<- inv
        
    }
    
    get_matrix_A.inv <- function(){
        A.inv
    }
    
    list(get_Matrix_A = get_Matrix_A, set_A.inv = set_A.inv, get_matrix_A.inv = get_matrix_A.inv)


}


## Write a short comment describing this function

cacheSolve <- function(A, ...) {
        ## Return a matrix that is the inverse of 'x'

 	A.inv <- A$get_matrix_A.inv()
    
    if(!is.null(A.inv)){
        message("Matrix stored")
        return(A.inv)
    }
    matrix.A <- A$get_Matrix_A()
    A.inv <- solve(matrix.A)
    A$set_A.inv(A.inv)
    
    A.inv
    
}
