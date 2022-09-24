start.time <- Sys.time()
i <- 1
j <- 12

while(i < 6189){
  matrix <- data.matrix(df[(i:j), (2:13)])
  print(matrix)
  inverseMatrix <- solve(matrix)
  print(inverseMatrix)
  i <- i + 1
  j <- j + 1
}
end.time <- Sys.time()
time.taken <- round(end.time - start.time, 2)
time.taken