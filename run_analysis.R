train <- read.table("train/X_train.txt")
train_act <- read.table("train/y_train.txt")
train_obs <- read.table("train/subject_train.txt")
train_data <- cbind(train_obs,train_act,train)

test <- read.table("test/X_test.txt")
test_act <- read.table("test/y_test.txt")
test_obs <- read.table("test/subject_test.txt")
test_data <- cbind(test_obs,test_act,test)

data <- rbind(train_data,test_data)

features <- read.table("features.txt")
labels <- as.vector(features[['V2']])
label_obs_act <- c("ID_Obs","Activity",labels)
colnames(data) <- label_obs_act

library(dplyr)
data_m_sd  <- select(data,contains("ID_Obs"),contains("Activity"),contains("-mean()"),contains("-std()"))
data_m_sd <- data_m_sd[,-(26:28)]
data_m_sd <- data_m_sd[,-(29:31)]
data_m_sd <- data_m_sd[,-(32:34)]
data_m_sd <- data_m_sd[,-33]
data_m_sd <- data_m_sd[,-34]
data_m_sd <- data_m_sd[,-35]
data_m_sd <- data_m_sd[,-36]
colnames(data_m_sd) <- gsub("\\(\\)","",names(data_m_sd),)
colnames(data_m_sd) <- gsub("-","_",names(data_m_sd),)
activityname <- c("Walking","Walking_Upstairs","Walking_Downstairs","Sitting","Standing","Laying")
data_m_sd$Activity <- factor(data_m_sd$Activity, levels = c(1:6), labels = c(activityname))
 
library(reshape2)
variables <- names(data_m_sd)
variables <- variables[3:68]
data_melt <- melt(data_m_sd,id=c("ID_Obs","Activity"),measure.vars=c(variables))

data_tidy <- data.frame()
for (i in 1:30){
	dt <- data_melt[data_melt$ID_Obs == i,]
	dtcast <- dcast(dt, Activity ~ variable,mean)
	dtcast_obs <- cbind(i, dtcast)
	data_tidy <- rbind(data_tidy,dtcast_obs)
}
names(data_tidy)[1] <- paste("ID_Obs")

