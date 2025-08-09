#! /usr/bin/env Rscript

library(tidyverse)

df <- read.csv("sculling.csv")

df$Class <- as.factor(df$Class)
df$Seat <- as.factor(df$Seat)
df$Country <- as.factor(df$Country)
df$Gearing <- df$OarLength / df$OarInboard 

p1 <- ggplot(df, aes(Class, OarLength)) + geom_violin()
p2 <- ggplot(df, aes(Class, Span)) + geom_violin()
p4 <- ggplot(df, aes(Class, Gearing)) + geom_violin()

ggsave("x-oarlength.png", p1)
ggsave("x-span.png", p2)
ggsave("x-gearing.png", p4)



