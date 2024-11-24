library(tidyverse)
library(ggplot2)
library(dplyr)
pdf("visualization.pdf")
df <- read.csv("Suicide Deaths by Age.csv")
Age <- df$Age
Suicides <- df$Suicides
plot(Age,Suicides,main= "Correlation of suicide cases and the age of 18 to 95 ", xlim = c(18,95),col = "lightblue",ylim = c(0,200),xlab = "Ages(18-95)")
model <- lm(Suicides ~ Age, data = df) 
abline(model, col = "blue") 
hist(Suicides,main = "Histogram of Suicides", xlab = "Suicides",col = "grey")
dev.off()