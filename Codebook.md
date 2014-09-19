#Codebook

We want to do analysis on the Samsung wearable computer data. Samsung experimanted on 30 volunteers and extracted data from the Samsung Galaxy S II which the 30 subjects wore which doing six different activities (walking, walking upstairs, walking downstairs, sitting, standing, laying).

Raw Data: Subject ids, Activity ids, Activity labels, test set, training set and 561 feature variable values which take the value from the mobiles gyroscope and accelerometer.

The data cleaning for analysis needs us to extract only the feature variables, from the signals of the mobile, of mean and standard deviation. Clean the variable names and properly label the activity codes with their activity names. And finally, extracting the tidy data with means of all the extracted feature variables for each activity and each subject.

Processed Data: 
Only 66 feature variables are used and rather than their value, the final data set contains the means of all the values against each activity and each subject. The 66 feature varibles names are cleaned, brackets are removed and dashes are changed to under-score's. The activity codes are converted to their activity labels.

Following are the 66 feature variables which are in the tidy data set for analysis,

|                          |                       |                           |                         |                      |                          |
|--------------------------|-----------------------|---------------------------|-------------------------|----------------------|--------------------------|
|      tBodyAcc_mean_X     |    tBodyAcc_mean_Y    |      tBodyAcc_mean_Z      |    tGravityAcc_mean_X   |  tGravityAcc_mean_Y  |    tGravityAcc_mean_Z    |
|    tBodyAccJerk_mean_X   |  tBodyAccJerk_mean_Y  |    tBodyAccJerk_mean_Z    |     tBodyGyro_mean_X    |   tBodyGyro_mean_Y   |     tBodyGyro_mean_Z     |
|   tBodyGyroJerk_mean_X   |  tBodyGyroJerk_mean_Y |    tBodyGyroJerk_mean_Z   |     tBodyAccMag_mean    |  tGravityAccMag_mean |   tBodyAccJerkMag_mean   |
|     tBodyGyroMag_mean    | tBodyGyroJerkMag_mean |      fBodyAcc_mean_X      |     fBodyAcc_mean_Y     |    fBodyAcc_mean_Z   |    fBodyAccJerk_mean_X   |
|    fBodyAccJerk_mean_Y   |  fBodyAccJerk_mean_Z  |      fBodyGyro_mean_X     |     fBodyGyro_mean_Y    |   fBodyGyro_mean_Z   |     fBodyAccMag_mean     |
| fBodyBodyAccJerkMag_mean | fBodyBodyGyroMag_mean | fBodyBodyGyroJerkMag_mean |      tBodyAcc_std_X     |    tBodyAcc_std_Y    |      tBodyAcc_std_Z      |
|     tGravityAcc_std_X    |   tGravityAcc_std_Y   |     tGravityAcc_std_Z     |    tBodyAccJerk_std_X   |  tBodyAccJerk_std_Y  |    tBodyAccJerk_std_Z    |
|      tBodyGyro_std_X     |    tBodyGyro_std_Y    |      tBodyGyro_std_Z      |   tBodyGyroJerk_std_X   |  tBodyGyroJerk_std_Y |    tBodyGyroJerk_std_Z   |
|      tBodyAccMag_std     |   tGravityAccMag_std  |    tBodyAccJerkMag_std    |     tBodyGyroMag_std    | tBodyGyroJerkMag_std |      fBodyAcc_std_X      |
|      fBodyAcc_std_Y      |     fBodyAcc_std_Z    |     fBodyAccJerk_std_X    |    fBodyAccJerk_std_Y   |  fBodyAccJerk_std_Z  |      fBodyGyro_std_X     |
|      fBodyGyro_std_Y     |    fBodyGyro_std_Z    |      fBodyAccMag_std      | fBodyBodyAccJerkMag_std | fBodyBodyGyroMag_std | fBodyBodyGyroJerkMag_std |
