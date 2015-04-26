#Part 1 : Assigning variables to various files as describedin codeBook
# used . to represent a relative patname from working directory
trainset <- read.table("./data/train/X_train.txt")
trainlabel <- read.table("./data/train/y_train.txt")
trainsubject <- read.table("./data/train/subject_train.txt")
testset <- read.table("./data/test/X_test.txt")
testlabel <- read.table("./data/test/y_test.txt")
testsubject <- read.table("./data/test/subject_test.txt")
## You can perform all the necessary tasks to view these variables as required. In summary or header or table form.
