#setwd("cloud/project")
messages<- read.csv("TextMessages.csv", header = TRUE)
#install.packages("reshape")
install.packages("reshape")
library(reshape)
text3<-melt(messages,id=c("Participant","Six_months"), measured=c("Baseline","Group"))
#
text3$Six_months<- as.factor(text3$Six_months)
install.packages("ggplot2")
#install.packages("ggplot2")
library(ggplot2) 
#Load the package and all of its dependencies


barWithErrors_valuebySix_months <- ggplot(text3, aes(value, Six_months))
barWithErrors_valuebySix_months
#install.packages("Hmisc")
install.packages("Hmisc")
library(Hmisc)
barWithErrors_valuebySix_months + stat_summary(fun. = mean, geom = "bar", fill =
                                                 "White", colour = "Black")

barWithErrors_valuebySix_months + stat_summary(fun= mean, geom = "bar", fill =
                                                 "White", colour = "Black") + stat_summary(fun.data = mean_cl_normal, geom =
                                                                                             "pointrange", colour = "Red")


barWithErrors_valuebySix_months + stat_summary(fun = mean, geom = "bar", fill =
                                                 "Green", colour = "Blue") + stat_summary(fun.data = mean_cl_normal, geom =
                                                                                            "pointrange", colour = "Red") + labs(x = "Time", y = "TextMessages
")



