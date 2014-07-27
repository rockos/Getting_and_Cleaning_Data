# Merges the training and the test sets to create one data set.
# train data
x_train <- read.table("./data/train/X_train.txt")
y_train <- read.table("./data/train/y_train.txt")
subject_train <- read.table("./data/train/subject_train.txt")

# test data
x_test <- read.table("./data/test/X_test.txt")
y_test <- read.table("./data/test/y_test.txt")
subject_test <- read.table("./data/test/subject_test.txt")

# mearg
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

#2. Extracts only the measurements on the mean and standard deviation for each 
mean_std <- grep("mean\\(\\)|std\\(\\)", features[, 2])
x_mean_std <- x_data[,mean_std]

#3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./data/activity_labels.txt")
y_data[,1] <- activity[y_data[,1],2]

#4. Appropriately labels the data set with descriptive variable names. 
# change labels
names(x_mean_std) <- gsub("\\(\\)", "", features[mean_std, 2])
names(y_data) <- "activity"
names(subject_data) <- "subject"

# merge
imerge_data <- cbind(subject_data,y_data,x_mean_std)

#write file
write.table(merge_data, "merge_data.txt")

#5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
