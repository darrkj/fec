# benford 
get_leading <- function(lst) {
  lst <- as.character(lst)
  lst <- gsub("[^0-9]", '', lst)
  lst <- as.numeric(substr(lst, 1, 1))
  lst[lst %in% 1:9]
}

ben <- get_leading(candidate$CAND_ST1)

plot(table(ben))

table(ben) / length(ben)

library(BenfordTests) 

fsd <- c(30.1, 17.6, 12.5, 9.7, 7.9, 6.7, 5.8, 5.1, 4.6)

sup_fsd <- cumsum(fsd) / 100

ks.benftest(x = ben)

ran <- sapply(1:100, function(x) 
  ks.benftest(x = sample(1:9, 1600, replace = T, prob = fsd))[[2]])
hist()
#

