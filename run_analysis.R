### use setwd() to set the work directory to the folder "UCI HAR Dataset"

### First, handle the test data (Second, handle the train data in a parallel way. Third, merge these two obtained datas)

# load the list of features from features.txt, which will be assigned as the variable
# names of train and test sets; load the activity_labels from activity_labels.txt;

features <- read.table("features.txt")[, 2]
activity_labels <- read.table("activity_labels.txt")[, 2]

## load the test data
X_test <- read.table("./test/X_test.txt")
names(X_test) <- features
y_test <- read.table("./test/y_test.txt")
volunteers_test <- read.table("./test/subject_test.txt")
names(volunteers_test) <- "volunteer_ID"

# Extract only the measurements on the mean and standard deviation for each measurement.
# check features.txt and find the key words "mean()" and "std()"
extract_features <- grep("mean|std", features)

X_test <- X_test[, extract_features]

# pass y_test the corresponding activity_labels so that it is readable.
y_test[, 2] <- activity_labels[y_test[, 1]]
names(y_test) <- c("activity_ID", "activity_label")

## reorganise the test data 
test_data <- cbind(volunteers_test, y_test, X_test)

### We similarly proceed with the train data
X_train <- read.table("./train/X_train.txt")
names(X_train) <- features
y_train <- read.table("./train/y_train.txt")
volunteers_train <- read.table("./train/subject_train.txt")
names(volunteers_train) <- "volunteer_ID"
X_train <- X_train[, extract_features]
y_train[, 2] <- activity_labels[y_train[, 1]]
names(y_train) <- c("activity_ID", "activity_label")

train_data <- cbind(volunteers_train, y_train, X_train)

### Merge the extracted training and test data sets to create 

data <- rbind(test_data, train_data)

### Now, based on above obtained "data", we create a second independent tidy data set with the average of each variable for each activity and each subject.
# We will use the package reshape2
library(reshape2)

id_labels <- c("volunteer_ID", "activity_ID", "activity_label")
data_labels <- setdiff(colnames(data), id_labels)

melt_data <- melt(data, id = id_labels, measure.vars = data_labels)
tidy_data <- dcast(melt_data, volunteer_ID + activity_label ~ variable, mean)

### output the result "data" and "tidy_data"
write.table(data, file="./data_txt")
write.table(tidy_data, file="./tidy_data.txt")
# write.table(tidy_data, file="./tidy_data.txt", row.name=FALSE)
