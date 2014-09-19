#run_analysis
============
The R-script is used to get a meaning-full tidy data from the samsung experimantal data.

The script uses two packages which are 'dplyr' and 'reshape2'. Hence, if they are not installed in your R you can use the following two commands before running the script.

<ul>
<li>install.packages("dplyr")</li>
<li>install.packages("reshape2")</li>
</ul>

The readme file will take you through the script step-wise explaining the process being carried out to reach the end tidy data.
First if you note the script is in steps, this will make it easy to explain the script, and after each step is finished a space is given between the two steps. 

Make sure that you set your directory in which 'UCI HAR Dataset' folder is unzipped from the samsung data.

##Reading and extracting the required data

The first four steps in the script reads in all the data available to you in the samsung data which you just downloaded in your directory.

In the first step, R would first read in the main training set. It then reads in the activity codes and the observation ID's for the training set. Then it column binds all the activity codes and observation Id's with the training set and stores it in 'Train_data'. 

The second step does all the same procedure with the test set and stores the data in 'Test_data'. With both the data set combined with their activity and observation id's the script then row binds these two data sets and make one data set named as 'Data'.

Till now the 'Data' set has no labels to it, hence in the fourth step the script reads in the features headings from the 'features.txt' file and extracts the heading name and stores it in the 'labels'. Then these labels are combined with the labels for the first and the second columns which are for observation id's and the activity names and stored in 'label_obs_act'. And finally the data set variables are given name using this 'label_obs_act'.

From the fifth step we star extract the required data for the final data set, which in this case was to extract all the mean and standard deviation variables of the features. To do this easily we take the help of the 'dplyr' package. We use the 'select' function from the package to select the required variables whihc contains the words '-mean()' and '-std' and not to forget your observation ids and activity names so the words 'ID_Obs' and 'Activity' and store it in the data set 'data_m_sd'.

If you see your data set till now you will notice there are few more variables which were not needed, like the variables with their mean frequency. So the lines 20 to 26 the script just does that, it drops all such variables from the data set. When we have the required variables in the data set its time to properly name the data set. 

##Reshaping the data

In step 6 we first correct the names of the feature variable, removing any brackets from the variable names and converting dashes to under-score, using the 'gsub' function. Then we read in the activity labels for the activity codes from the directory using the file 'activity_labels.txt'. We extract only the label names from this file and store them in 'activityname'. Then we label the activity codes in the 'data_m_sd' data set under activity head with there activity names.

In step 7 to 8, the script simply reshapes the whole data set 'data_m_sd'. It first melts the data into a comprised data set using the 'melt' function from the 'reshape2' package. It melts the data set on the observation id and the activity names and takes all the features variables from the data set 'data_m_sd' and stores them in the data set ' data_melt'. To get the final tidy data with all the means of the feature variables for each activity and each subject observation the script uses the loop in step 7.

Before the loop we make a empty data frame with the name 'data_tidy', this will take all the values from loop and store and bind them init. The loop runs 30 times, as there are 30 observations. The first loop subsets the data set 'data_melt' for the observation ids with value 1. It then casts the subset data on activity and gives the mean of each variable and stores it in the 'dtcast' data set. To give this casted data the subjects id we bind in the observation id to the 'dtcast' data set and store and row bind this data to the empty data frame we made before the loop i.e, the 'data_tidy' data frame. 

This loop does the above steps for all the 30 subjects results and in the end we have the tidy data in the 'data_tidy' data frame with means of all the featured variables for each activity and each subject observation.







