#! /usr/bin/env Rscript

library(tidyverse)

xf <- read.csv("sculling.csv")

xf$Class <- as.factor(xf$Class)
xf$Seat <- as.factor(xf$Seat)
xf$Country <- as.factor(xf$Country)
xf$Gearing <- xf$OarOutboard / xf$OarInboard 

p1 <- ggplot(xf, aes(Class, OarLength)) + geom_violin()
p2 <- ggplot(xf, aes(Class, Span)) + geom_violin()
p3 <- ggplot(xf, aes(Class, OarInboard)) + geom_violin()
p4 <- ggplot(xf, aes(Class, Gearing)) + geom_violin()

ggsave("x-oarlength.png", p1)
ggsave("x-span.png", p2)
ggsave("x-inboard.png", p3)
ggsave("x-gearing.png", p4)

df <- read.csv("sweep.csv")

df$Class <- as.factor(df$Class)
df$Seat <- as.factor(df$Seat)
df$Country <- as.factor(df$Country)
df$Gearing <- df$OarOutboard / df$OarInboard 

p1 <- ggplot(df, aes(Class, OarLength)) + geom_violin()
p2 <- ggplot(df, aes(Class, Spread)) + geom_violin()
p3 <- ggplot(df, aes(Class, OarInboard)) + geom_violin()
p4 <- ggplot(df, aes(Class, Gearing)) + geom_violin()

ggsave("oarlength.png", p1)
ggsave("span.png", p2)
ggsave("inboard.png", p3)
ggsave("gearing.png", p4)


p1 <- ggplot(df, aes(OarInboard, Spread)) +
      geom_point(position="jitter") +
      geom_smooth(method="lm", color = "skyblue", se = FALSE) +
      labs(title = "Relationship between inboard and spread",
       subtitle = "Linear regression line added",
       x="inboard", y ="spread")
ggsave("inboard-spread.png", p1)

p1 <- ggplot(xf, aes(OarInboard, Span)) +
      geom_point(position="jitter") +
      labs(title = "Relationship between inboard and span",
       x="inboard", y ="spread")
ggsave("x-inboard-spread.png", p1)
           
