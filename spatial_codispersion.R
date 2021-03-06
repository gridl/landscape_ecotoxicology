################################################################
# Example 3: Codisperion Statistics
# Written in R Version 3.5.0
################################################################

#Load data 
data = read.csv("data.csv")

#Load Libraries
library(SpatialPack)

summary(data)

x = data$amphib_cort
y = data$snow
coords = data [1:2]

data.test = modified.ttest(data$amphib_cort, data$snow, coords) 
data.test

data.codisp = codisp(data$amphib_cort, data$snow, coords)
data.codisp
plot(data.codisp, xlab="distance (km)", title(main = NULL))

data.cor = cor.spatial(data$amphib_cort, data$snow, coords) 
data.cor