##this script performs the following
###1. Merges the training and the test sets to create one data set.
* Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" 
* Set them to memmory "x_train", "y_train"
* Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test"
* Set them to memmory "x_test","x_tetst"
* Merge "x_train" with "x_test"
* Merge "y_train" with "y_test"

###2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* Read the features.txt file from the "/data"
* Extract the measurements on the mean and standard deviation

###3. Uses descriptive activity names to name the activities in the data set
* Read the activity_labels.txt file from the "./data""

###4. Appropriately labels the data set with descriptive variable names. 
* change column names of each variables "x_data" , "y_data"
* merge data

###5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
