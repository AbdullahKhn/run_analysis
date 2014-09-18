run_analysis
============

##The readme file will take you through the script step-wise explaining the process being carried out to reach the end tidy data.

##The very first step is to read in all the data available to you in the samsung data which you just downloaded in your directory.

##train <- read.table("train/X_train.txt")
##train_act <- read.table("train/y_train.txt")
##train_obs <- read.table("train/subject_train.txt")
##train_data <- cbind(train_obs,train_act,train)

##In the above script, R would first read in the main training set.
##Then it reads in the activity codes and the observation ID's for the training set
