setwd('C:\\Users\\RED\\PycharmProjects\\Data Analysis R')
library(ggplot2)
ipod <- sample(c(rep(1, 250),
                 rep(2,300),
                 rep(3, 600),
                 rep(4, 800),
                 rep(5, 550),
                 rep(6, 350),
                 rep(7, 100),
                 rep(8, 25),
                 rep(9, 20),
                 rep(10, 5)))

samples = sample(ipod,25)
z = data.frame(samples)

mat <- matrix(NA_character_, nrow = 50, ncol = 25)
for (i in 1:50) {
  mat[i, ] <- sample(ipod, 25)
}

x = data.frame(mat)

for (i in 1:ncol(x)){
  ggplot(x, aes(x = x[, i])) + geom_bar(width = .2)
  Sys.sleep(3)
}
                                  
