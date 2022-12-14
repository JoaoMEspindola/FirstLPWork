df <- read.csv(file.choose())

start.time <- Sys.time()
i <- 1
j <- 12

while(j < 18){
  matrix <- data.matrix(df[(i:j), (2:13)])
  print(matrix)
  result = tryCatch({
    inverseMatrix <- solve(matrix)  
    print(inverseMatrix)
  }, error = function(err) {
      print(paste("MY_ERROR:  ",err))
  }, finnally = {
    i <- i + 1
    j <- j + 1
  })
}
end.time <- Sys.time()
time.taken <- round(end.time - start.time, 2)
time.taken