library(ggplot2)
library(ggfortify)

USD = read.csv(file = "D:/R/US Dollar/Final Project/US dollar.csv", sep = ",", head = TRUE)
names(USD)
current = USD[4:length(USD[,2]),1:2]
names(current)

#stripchart(current$X~current$RX..B.m, method="stack",
#           main='Historical buying dollar spot exchange rate',
#           xlab='years')

plot(1:length(current$X), current$RX..B.m, axes=F)
lines(1:length(current$X), current$RX..B.m)
axis(1, at=1:length(current$X), labels=as.character(current$X))

ggplot(current, aes(x = X, y = RX..B.m))+geom_line()