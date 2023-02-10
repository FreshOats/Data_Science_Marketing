## Cluster Analysis

data <- read.csv("Data_Files/05_02/cluster-r.csv")

head(data)

#Standardize the data
# CTA is Call to Action
scaled_data <- scale(data[-1])  # remove the first column with string data

# Run kmeans on standardized data
groups <- kmeans(scaled_data, 3)

# Load in the cluster library
library(cluster)

# Vis the clusters
clusplot(scaled_data, groups$cluster)

# Summarize data
groups$size
