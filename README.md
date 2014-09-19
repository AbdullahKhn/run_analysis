##run_analysis
============
The R-script is used to get a meaning full tidy data from the samsung experimantal data.   

The readme file will take you through the script step-wise explaining the process being carried out to reach the end tidy data.
First if you note the script is in steps, this will make it easy to explain the script, and after each step is finished a space is given between the two steps. 

The first four steps in the script reads in all the data available to you in the samsung data which you just downloaded in your directory.

In the first step, R would first read in the main training set. It then reads in the activity codes and the observation ID's for the training set. Then it column binds all the activity codes and observation Id's with the training set and stores it in 'Train_data'. 

The second step does all the same procedure with the test set and stores the data in 'Test_data'. With both the data set combined with their activity and observation id's the script then row binds these two data sets and make one data set named as 'Data'.

Till now the 'Data' set has no labels to it, hence in the fourth step the script reads in the features headings from the 'features.txt' file and extracts the heading name and stores it in the 'labels'. Then these labels are combined with the labels for the first and the second columns which are for observation id's and the activity names and stored in 'label_obs_act'. And finally the data set variables are given name using this 'label_obs_act'.




