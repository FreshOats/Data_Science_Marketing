# Connect to data
data <- read.csv('Data_Files/04_02/prediction-r.csv')
library('tree')

# Sales classification - the categorization ABC highest to lowest performers
table(data$sales.classification)

# Get the column names
names(data)

# Create the decision tree
decision_tree <- tree(sales.classification ~ capita + drive.by.traffic + complimentary.establishments + competition + weather + unemployment.rate + var1 + var2 + var3, data=data)
decision_tree

# plot initial
plot(decision_tree)
text(decision_tree)

# Prune it
pruned_tree <- prune.tree(decision_tree, best=3)





# Sum our classifications so we can see them 

# Output our column names for easy reference 

# Install our algorithm (the tree package)

# Bring our newly installed algorithm into our library of packages

# Configure our algorithm to create our tree
