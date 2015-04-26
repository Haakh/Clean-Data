#CodeBook
The Raw data Source can be found in the Readme file.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

===========================================================================================================
=======================================================================================================================
Script Definition
##Part 1

1. Save all the data files to their respective variables as Described

   - X_train.txt   >> trainset
   - y_train.txt  >> trainlabel
   - subject_train.txt   >>  trainsubject
   - X_test.txt  >>  testset
   - y_test.txt  >> testlabel
   - subject_test.txt  >>testsubject
2. Merge both the variables trainset and test set to make a "mergeset" dataframe.
3. Similarly merge trainlabel and testlabel -> "mergelabel" data frame
4. And trainsubject and test subject to make "mergesubject" data frame.

##Part 2
 1. Get the functions containing only the "mean" or "std" in their names
 2. Update the "mergeset" data frame to include only the desired data

##Part 3
1. Create a variable "activity" and store the activity_label.txt file in it.
2. Update the mergelabel data frame to update the activity names instead of the labels.

##Part 4
1. make a consolidated data Set called "Data" to combine all three tables.
2. Give appropriate names to the columns in "data" frame. as there are many columns. I've given names to only 3.

##Part 5
1. 
2. 
