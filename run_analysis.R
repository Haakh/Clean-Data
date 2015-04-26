#Part 1 : Assigning variables to various files as described in codeBook
# used . to represent a relative patname from working directory
trainset <- read.table("./data/train/X_train.txt")
trainlabel <- read.table("./data/train/y_train.txt")
trainsubject <- read.table("./data/train/subject_train.txt")
testset <- read.table("./data/test/X_test.txt")
testlabel <- read.table("./data/test/y_test.txt")
testsubject <- read.table("./data/test/subject_test.txt")
## You can perform all the necessary tasks to view these variables as required. In summary or header or table form.
#Merge the X sets of test and train tables
mergeset <- rbind(trainset, testset)
#Similarly merge test and train for Y variable
mergelabel <- rbind(trainlabel, testlabel)
#Similarly for Subjects f test and train Tables
mergesubject <- rbind(trainsubject, testsubject)

#Part 2 :Extract the measurements on the mean and standard deviation for each measurement. 

