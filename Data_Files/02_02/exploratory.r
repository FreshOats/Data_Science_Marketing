# import csv file 
myExploratoryDate <- read.csv("Data_Files/02_02/exploratory-r.csv")
# get a quick snapshot of your data
head(myExploratoryDate)


hist(myExploratoryDate$cpa)
# shift the names to each row
# Basically, change indexing

row.names(myExploratoryDate) <- myExploratoryDate$keyword
hist(myExploratoryDate$cpa)

# review that transformation 
head(myExploratoryDate)
# transform into a matrix 
myDataMatrix <- data.matrix(myExploratoryDate)

# generate our heatmap
heatmap(myDataMatrix, Rowv=NA, Colv = NA, scale='column')
