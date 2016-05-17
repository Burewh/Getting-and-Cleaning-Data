Getting and Cleaning data
##You should create one R script called run_analysis.R that does the following.
 ##Merges the training and the test sets to create one data set.
 ##Extracts only the measurements on the mean and standard deviation for each measurement.
 ##Uses descriptive activity names to name the activities in the data set
 ##Appropriately labels the data set with descriptive variable names.
 ##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## import x_test , y_test and subject _test
  X_test <- read.table("X_test.txt")
  activitylebelstest <- read.table("y_test.txt")
  Subjecttest <- read.table("subject_test.txt" )
## import x_train, y_train and subject_train
  X_train <- read.table("X_train.txt")
  activitylebelstrain <- read.table("y_train.txt")
  Subjecttrain <- read.table("subject_train.txt" )
## import the features.txt doc for variable name to be used on x_train and X_test
variablenames <- read.table("features.txt")
## edit variablenames to have a unique and valid varialble name list
variablenames <- mutate(variablenames, preVarivable = make.names(variablenames[,2]))
                        variablenames <- mutate(variablenames, variable = make.unique(variablenames[,3]))
 ## arrange the variable names on the data sets - test and train
   colnames(X_train) = variablenames[,4]
   colnames(X_test) = variablenames[,4]
##change the lebels for Activity Level - for both test and train
activitylebelstest <- factor(activitylebelstest$V1,
           levels = c(1,2,3,4,5,6),
           labels = c("Walking", "Walking upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying") )
activitylebelstrain <- factor(activitylebelstrain$V1,
                             levels = c(1,2,3,4,5,6),
                             labels = c("Walking", "Walking upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying") )
##assign variable for subjecttest and subjecttrain - v1 as "Subject"
           colnames(Subjecttest) <- "Subject" 
           colnames(Subjecttrain)  <- "Subject"
 ##combine the x_test, activitylebeltest and subjecttest files to one data set 
           Testdataset <- cbind(activitylebelstest, Subjecttest, X_test) 
           ## set colname of activitylebeltest to "Activity Level"
           colnames(Testdataset)[1]  <- "Activity_Level"
##combine the x_train, activitylebeltrain and subjecttrain files to one data set 
           Traindataset <- cbind(activitylebelstrain, Subjecttrain, X_train) 
           ## set column name of activitylebeltrain to "Activity_Level"
           colnames(Traindataset)[1]  <- "Activity_Level"
## create complete merged test and train datasets
           HARDataset <- rbind(Traindataset, Testdataset)
## select mean and standard deviction measurements
           Meanstddataset <- select(HARDataset, "Activity_Level", "subject", contains("mean"), contains("std"))
## group the data by activity level and subject
           byactivitysubject <- group_by(Meanstddataset, Activity_Level, Subject)
## summarise the data with the average of each variable for each activity and each subject.
          Finaldata <- summarise_each(byactivitysubject, funs(mean))