data <- read.csv('Data_Files/06_02/conjoint-r.csv')
matrix  <- read.csv('Data_Files/06_02/conjoint-r-profiles-matrix.csv')
names  <- read.csv('Data_Files/06_02/conjoint-r-level-names.csv')

library(conjoint)

# Model some of the data

caUtilities(y=data[1,], x=matrix, z=names)


# Apply the full dataset

caUtilities(y=data, x = matrix, z = names)

# This shows relative importance of the features. 