#--------------------------------------------------
# generate correlations using lapply and sapply
#-------------------------------------------------

data(mtcars)
head(mtcars)

#---------------------------------------------------------------------------------------------------------
# generate correlations as if mpg was the response variable and the rest were the predictor variables
# 
# need to form a data frame of just the predictors
# put the response variable into a vector
#---------------------------------------------------------------------------------------------------------

pred <- subset(mtcars, select = -mpg)
y.var <- mtcars$mpg

# using sapply
cors.sapply  <- sapply(pred, cor, y=y.var)

# using lapply
cors.lapply  <- lapply(pred, cor, y=y.var)

cors.lapply
cors.sapply
