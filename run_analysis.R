#Part 1 
#Assigning variables to various files as described in codeBook
# used . to represent a relative patname from working directory
trainset <- read.table("./Dataset/train/X_train.txt")
trainlabel <- read.table("./Dataset/train/y_train.txt")
trainsubject <- read.table("./Dataset/train/subject_train.txt")
testset <- read.table("./Dataset/test/X_test.txt")
testlabel <- read.table("./Dataset/test/y_test.txt")
testsubject <- read.table("./Dataset/test/subject_test.txt")
## You can perform all the necessary tasks to view these variables as required. In summary or header or table form.
#Merge the X sets of test and train tables
mergeset <- rbind(trainset, testset)
#Similarly merge test and train for Y variable
mergelabel <- rbind(trainlabel, testlabel)
#Similarly for Subjects f test and train Tables
mergesubject <- rbind(trainsubject, testsubject)

#Part 2 
#Extract the measurements on the mean and standard deviation for each measurement. 
# store the features.txt into a variable
features <-read.table("./Dataset/features.txt")
# select the desired features and save it into variable
desired.features <- grep("std|mean", features[,2])
mergeset <- mergeset[,desired.features]

#Part 3 :
# iving descriptive activity names to the activities in the data set
activity <- read.table("./Dataset/activity_labels.txt")
#make a variable to store the activitues w.r.t its labels temporarily
activitylabel <- activity[mergelabel[, 1], 2]
# Update the mergelabel variable with the activity name
mergelabel[, 1] <- activitylabel

#Part 4 :
# Give appropriate names to a consolidated data
Data<-cbind(mergesubject,mergelabel,mergeset)
colnames(Data)<- c("SubjectID","Activities","Values")

#Part 5
#Use aggregate function as described for our "Data " data frame.:
## S3 method for class 'data.frame'
###aggregate(x, by, FUN, ..., simplify = TRUE)
tidydata<- aggregate(Data[,3:81], by = list(Data$SubjectID, Data$Activities), FUN = mean)
# Give names to the columns
colnames(tidydata)[1:2] <- c("SubjectID", "Activity")
#Write the tidy data to a .txt file
write.table(tidydata, file="Tidy.txt", row.names = FALSE)
