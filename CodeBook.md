#Getting and Cleaning Data course project - Codebook
This document describes the various variables, the data, and any transformations or work that were performed to clean up the data included in the provided data set.

##Original data source
The original data for the project were downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

Please refer to the README.txt, features_info.txt and features.txt files for information on the various measurements and parameters of the original data set.

##How the submitted data set was compiled
The data set (which I labled "TidyDataSet.txt") was derived from the data sets in the "train" and "test" subdirectories of the "UCI HAR Dataset". These files included measurements performed on sensors attached to 30 subjects while they performed six basic activities. Some of the subjects were considered a training group and others were considered a testing group. The files included measurement variables with names that described the nature of the measurements or processing that was carried out in order to determine the statistical nature of each activity as measured by the sensors.  
The first step was to clean the variable names of illegal characters and unneccessary repetition of the "Body" text in some of the names. The names were also updated to include time or frequency prefixes. Next, a list of relevant variable was compiled from the features list according to their name. The next step was to attach the subjects as well as the activities to each portion of the data set - training and test. The activities, originally read as numbers, were replaced by more meaningful text. Next, the data over all subjects and activities was combined to form the initial "complete" data set. Next, the complete data set was filtered to only include the relevant columns (measurements).The submitted data set only required measurements on the mean and standard deviation of the measured parameters. At this stage, the filtered data set was processed to proide average values of each measurement for each subject-activity combination. The resulting data set was saved using write.table() using row.name=FALSE.  
*Please refer to the inline documentation in the run_analysis.R script for specific details on the implementation of the abovementioned processing.*

##Variable selection
The variables selected for the tidy data set were picked so that the variables were actual statistical measurements rather than a component assisting further calculations. For this reason, only variable names that included parantheses (thereby, showing that they are a product of a statistical function call) were included as variables in the final data set compiled and submitted.

##Variables
The following paragraphs provide information regarding the variables used in the data set. *Please note that the elements in the data set have no units since the measurements have been normalized*.  

**Subject, Activity**  
These items comprise the basis for each measurement. The Subject field is the id of the person that was measured, while the Activity field provides the identification of the type of activity that was performed by the subject while being measured.

**Average_timeBodyAcc_mean_X, Average_timeBodyAcc_mean_Y, Average_timeBodyAcc_mean_Z**  
These variables provide the average mean body acceleration in each of the X, Y, Z axes.  


**Average_timeBodyAcc_std_X, Average_timeBodyAcc_std_Y, Average_timeBodyAcc_std_Z**  
These variables provide the average standard deviation of the body acceleration in each of the X, Y, Z axes.  


**Average_timeGravityAcc_mean_X, Average_timeGravityAcc_mean_Y, Average_timeGravityAcc_mean_Z**  
These variables provide the average mean gravitational acceleration in each of the X, Y, Z axes.  


**Average_timeGravityAcc_std_X, Average_timeGravityAcc_std_Y, Average_timeGravityAcc_std_Z**  
These variables provide the average standard deviation of the gravitational acceleration in each of the X, Y, Z axes.  


**Average_timeBodyAccJerk_mean_X, Average_timeBodyAccJerk_mean_Y, Average_timeBodyAccJerk_mean_Z**  
These variables provide the average mean body jerk in each of the X, Y, Z axes.  


**Average_timeBodyAccJerk_std_X, Average_timeBodyAccJerk_std_Y, Average_timeBodyAccJerk_std_Z**  
These variables provide the average standard deviation of the body jerk in each of the X, Y, Z axes.  


**Average_timeBodyGyro_mean_X, Average_timeBodyGyro_mean_Y, Average_timeBodyGyro_mean_Z**  
These variables provide the average gyro mean in each of the X, Y, Z axes.  


**Average_timeBodyGyro_std_X, Average_timeBodyGyro_std_Y, Average_timeBodyGyro_std_Z**  
These variables provide the average gyro standard deviation in each of the X, Y, Z axes.  


**Average_timeBodyGyroJerk_mean_X, Average_timeBodyGyroJerk_mean_Y, Average_timeBodyGyroJerk_mean_Z**  
These variables provide the average mean gyro jerk in each of the X, Y, Z axes.  


**Average_timeBodyGyroJerk_std_X, Average_timeBodyGyroJerk_std_Y, Average_timeBodyGyroJerk_std_Z**  
These variables provide the average standard deviation of the gyro jerk in each of the X, Y, Z axes.  


**Average_timeBodyAccMag_mean**  
This is the average mean magnitude of the body acceleration.


**Average_timeBodyAccMag_std**  
This is the average standard deviation of the body acceleration magnitude.


**Average_timeGravityAccMag_mean**  
This is the average mean magnitude of the gravitational acceleration.


**Average_timeGravityAccMag_std**  
This is the average standard deviation of the gravitational acceleration magnitude.


**Average_timeBodyAccJerkMag_mean**  
This is the average mean magnitude of the body acceleration jerk.


**Average_timeBodyAccJerkMag_std**  
This is the average standard deviation of the body acceleration jerk magnitude.


**Average_timeBodyGyroMag_mean**  
This is the average mean magnitude of the gyro measurement.


**Average_timeBodyGyroMag_std**  
This is the average standard deviation of the magnitude of the gyro measurement.


**Average_timeBodyGyroJerkMag_mean**  
This is the average mean magnitude of the gyro jerk measurement.


**Average_timeBodyGyroJerkMag_std**  
This is the average standard deviation of the magnitude of the gyro jerk measurement.


**Average_frequencyBodyAcc_mean_X, Average_frequencyBodyAcc_mean_Y, Average_frequencyBodyAcc_mean_Z**  
These variables provide the average frequency domain mean body acceleration in each of the X, Y, Z axes.  


**Average_frequencyBodyAcc_std_X, Average_frequencyBodyAcc_std_Y, Average_frequencyBodyAcc_std_Z**  
These variables provide the average frequency domain standard deviation of the body acceleration in each of the X, Y, Z axes.  


**Average_frequencyBodyAccJerk_mean_X, Average_frequencyBodyAccJerk_mean_Y, Average_frequencyBodyAccJerk_mean_Z**  
These variables provide the average frequency domain mean body acceleration jerk in each of the X, Y, Z axes.  


**Average_frequencyBodyAccJerk_std_X, Average_frequencyBodyAccJerk_std_Y, Average_frequencyBodyAccJerk_std_Z**  
These variables provide the average frequency domain standard deviation of the body acceleration jerk in each of the X, Y, Z axes.  


**Average_frequencyBodyGyro_mean_X, Average_frequencyBodyGyro_mean_Y, Average_frequencyBodyGyro_mean_Z**  
These variables provide the average frequency domain gyro mean in each of the X, Y, Z axes.  


**Average_frequencyBodyGyro_std_X, Average_frequencyBodyGyro_std_Y, Average_frequencyBodyGyro_std_Z**  
These variables provide the average frequency domain gyro standard deviation in each of the X, Y, Z axes.  


**Average_frequencyBodyAccMag_mean**  
This is the average frequency domain mean magnitude of the body acceleration.


**Average_frequencyBodyAccMag_std**  
This is the average frequency domain standard deviation of the body acceleration magnitude.


**Average_frequencyBodyAccJerkMag_mean**  
This is the average frequency domain mean of the body acceleration jerk magnitude.


**Average_frequencyBodyAccJerkMag_std**  
This is the average frequency domain standard deviation of the body acceleration jerk magnitude.


**Average_frequencyBodyGyroMag_mean**  
This is the average frequency domain mean magnitude of the gyro measurement.


**Average_frequencyBodyGyroMag_std**  
This is the average frequency domain standard deviation of the magnitude of the gyro measurement.


**Average_frequencyBodyGyroJerkMag_mean**  
This is the average frequency domain mean magnitude of the gyro jerk measurement.


**Average_frequencyBodyGyroJerkMag_std**  
This is the average frequency domain standard deviation of the magnitude of the gyro jerk measurement.


