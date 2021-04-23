selection_sort = function(x){
  n = length(x)
  for (i in 1 : (n - 1)){
    for (j in (i + 1) : n){
      if (x[j] < x[i]){
        temp = x[i]
        x[i] = x[j]
        x[j] = temp
      }
    }
  }
  return(x)}
dulieu = c(32, 17, 49, 98, 06, 25, 53, 61)
selection_sort(dulieu)

selfsort = function(x){
  if (length(x)>1){
    min = which.min(x)
    c(x[min], selfsort(x[-min]))
  }else x
}
selfsort(dulieu)




bubble_sort = set.seed(1)
dulieu = c(32, 17, 49, 98, 06, 25, 53, 61)
example <- function(x)
{
  n <- length(x)
  for (k in n:2)
  {
    i <- 1       
    while (i < k)
    {
      if (x[i] > x[i+1])
      {
        temp <- x[i+1]
        x[i+1] <- x[i]
        x[i] <- temp
      }
      i <- i+1
    }
  }
  x 
}

example(dulieu)

