library(readr)
df <- read.csv("Suicide Deaths by Age.csv")
Age <- df$Age
Suicides <- df$Suicides
cor.test(Age, Suicides, method="pearson")
