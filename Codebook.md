#Codebook

We want to do analysis on the Samsung wearable computer data. Samsung experimanted on 30 volunteers and extracted data from the Samsung Galaxy S II which the 30 subjects wore which doing six different activities (walking, walking upstairs, walking downstairs, sitting, standing, laying).

Raw Data: Subject ids, Activity ids, Activity labels, test set, training set and 561 feature variable values which take the value from the mobiles gyroscope and accelerometer.

The data cleaning for analysis needs us to extract only the feature variables, from the signals of the mobile, of mean and standard deviation. Clean the variable names and properly label the activity codes with their activity names. And finally, extracting the tidy data with means of all the extracted feature variables for each activity and each subject.

Processed Data: 
Only 66 feature variables are used and rather than their value, the final data set contains the means of all the values against each activity and each subject. The 66 feature varibles names are cleaned, brackets are removed and dashes are changed to under-score's. The activity codes are converted to their activity labels.



