# Getting-and-Cleaning-Data-Course-Project

##########################################################################
The file run_analysis.R is required to design so that it can do the following issues.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##########################################################################

Here is a description of my method.

First, download from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. After decompression, we obtain a folder named "UCI HAR Dataset". Use the commond setwd() or Misc for Mac, and set the work directory to this folder.

Second, do some preparation work. For example, read the file "README.txt", make clear the structure of subfolder "test" and "train", load some data file, such as, "X_test.txt", "y_test.txt", "subject_test.txt", into R and check their dimensions, variables and variable names.

Third, fininshing. 

1. extract and process the test data. 

    1.1 loading of the test data, include X_test, y_test, volunteers_test
        P.S. here, I used volunteers_test instead of subject_test. Because this notation is more easier for me to remember.
        
    1.2 name the variable names.  
    
    1.3 use the command grep and key words "mean" and "std" to extract required sub_features
        P.S. I tried the key words "mean\\(\\)" and "std\\(\\)". It looks no good, refer to "features_info.txt"
        
    1.4 use the command cbind to reorganise the test data
    
    1.5 check; e.g. head(test_data)
    
2. extract and process the train data.
    similar to step 1

3. use the command rbind to combine the obtained test data and train data
4. 
4. use the commands melt and dcast to obtain the tidy_data
    P.S. in this step, we used library "reshape2". If you have no this package, use install.packages("reshape2") to install.

5. output the required data using the command write.table. 
   Here I wrote two datas. They are the "data" obtained in step 3 and "tidy_data" obtained in step 4.
