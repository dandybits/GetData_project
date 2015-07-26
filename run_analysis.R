## WORK IN PROGRESS
##
## This code uses data.table package. It's assumed 
## that the package is already loaded
## This code assumes that files being merged have matching
## number of columns/rows as appropriate. This verification 
## was performed visually in text editor. 
##

##
## Read/Merge data sets
##

## assumes data is properly placed in subfolders of the work directory
## syntax reflects that files are read from a Windows PC

## read/merge all data files
subject_train    <- read.table("UCI HAR Dataset//train//subject_train.txt")
subject_test     <- read.table("UCI HAR Dataset//test//subject_test.txt")
subject          <- rbind(subject_train, subject_test)

features_train   <- read.table("UCI HAR Dataset//train//X_train.txt")
features_test    <- read.table("UCI HAR Dataset//test//X_test.txt")
features         <- rbind(features_train, features_test)

activity_train   <- read.table("UCI HAR Dataset//train//y_train.txt")
activity_test    <- read.table("UCI HAR Dataset//test//y_test.txt")
activity         <- rbind(activity_train, activity_test)

## read lookups
feature_lookup   <- read.table("UCI HAR Dataset//features.txt", col.names = c("feature_id", "feature_name"))
activity_lookup  <- read.table("UCI HAR Dataset//activity_labels.txt", col.names = c("activity_id", "activity_name"))

##
## Filter columns to leave only Mean and Standard Devition measures
## 

## filter for required features
filter_col_index <- grep("-mean\\(|-std\\(", feature_lookup$feature_name)

features_subset  <- features[,c(filter_col_index)]

## merge columns, assign colnames
colnames(subject) <- c("subject")
colnames(activity) <- c("activity_id")

subject_feature_activity <- cbind(subject, activity, features_subset)

##
## Calculate averages for each activity for each subject
## 


##
## Print output
##
#subject$subject <- paste("Person", subject$subject)

a <- merge(activity_lookup, activity, by = 'activity_id'))
