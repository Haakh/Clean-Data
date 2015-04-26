#Part 1 : Assigning variables to various files as described in codeBook
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

#Part 2 :Extract the measurements on the mean and standard deviation for each measurement. 
# store the features.txt into a variable
features <-read.table("./data/features.txt")
# select the desired features and save it into variable
desired.features <- grep("std|mean", features[,2])
mergeset <- mergeset[,desired.features]
