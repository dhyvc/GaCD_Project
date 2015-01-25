#Getting and Cleaning Data course project - Codebook
This document describes the various variables, the data, and any transformations or work that were performed to clean up the data included in the provided data set.

##Original data source
The original data for the project were downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

Please refer to the README.txt, features_info.txt and features.txt files for information on the various measurements and parameters of the original data set.

##Variable selection
The variables selected for the tidy data set were picked so that the variables were actual statistical measurements rather than a component assisting further calculations. For this reason, only variable names that included parantheses (thereby, showing that they are a product of a statistical function call) were included as variables in the final data set compiled and submitted.

##Variables
The following paragraphs provide information regarding the variables used in the data set. *Please note that the elements in the data set have no units since the measurements have been normalized*.  
1. **Average_timeBodyAcc_mean_X, Average_timeBodyAcc_mean_Y, Average_timeBodyAcc_mean_Z**  
These variables provide the average mean body acceleration in each of the X, Y, Z axes.  


**Average_timeBodyAcc_std_X, Average_timeBodyAcc_std_Y, Average_timeBodyAcc_std_Z**  
These variables provide the average standard deviation of the body acceleration in each of the X, Y, Z axes.  


3. **Average_timeGravityAcc_mean_X, Average_timeGravityAcc_mean_Y, Average_timeGravityAcc_mean_Z**  
These variables provide the average mean gravitational acceleration in each of the X, Y, Z axes.  


4. **Average_timeGravityAcc_std_X, Average_timeGravityAcc_std_Y, Average_timeGravityAcc_std_Z**  
These variables provide the average standard deviation of the gravitational acceleration in each of the X, Y, Z axes.  


5. **Average_timeBodyAccJerk_mean_X, Average_timeBodyAccJerk_mean_Y, Average_timeBodyAccJerk_mean_Z**  
These variables provide the average mean body jerk in each of the X, Y, Z axes.  


6. **Average_timeBodyAccJerk_std_X, Average_timeBodyAccJerk_std_Y, Average_timeBodyAccJerk_std_Z**  
These variables provide the average standard deviation of the body jerk in each of the X, Y, Z axes.  


7. **Average_timeBodyGyro_mean_X, Average_timeBodyGyro_mean_Y, Average_timeBodyGyro_mean_Z**  
These variables provide the average gyro mean in each of the X, Y, Z axes.  


8. **Average_timeBodyGyro_std_X, Average_timeBodyGyro_std_Y, Average_timeBodyGyro_std_Z**  
These variables provide the average gyro standard deviation in each of the X, Y, Z axes.  


9. **Average_timeBodyGyroJerk_mean_X, Average_timeBodyGyroJerk_mean_Y, Average_timeBodyGyroJerk_mean_Z**  
These variables provide the average mean gyro jerk in each of the X, Y, Z axes.  


10. **Average_timeBodyGyroJerk_std_X, Average_timeBodyGyroJerk_std_Y, Average_timeBodyGyroJerk_std_Z**  
These variables provide the average standard deviation of the gyro jerk in each of the X, Y, Z axes.  


11. **Average_timeBodyAccMag_mean**  
This is the average mean magnitude of the body acceleration.


12. **Average_timeBodyAccMag_std**  
This is the average standard deviation of the body acceleration magnitude.


13. **Average_timeGravityAccMag_mean**  
This is the average mean magnitude of the gravitational acceleration.


14. **Average_timeGravityAccMag_std**  
This is the average standard deviation of the gravitational acceleration magnitude.


15. **Average_timeBodyAccJerkMag_mean**  
This is the average mean magnitude of the body acceleration jerk.


16. **Average_timeBodyAccJerkMag_std**  
This is the average standard deviation of the body acceleration jerk magnitude.


17. **Average_timeBodyGyroMag_mean**  
This is the average mean magnitude of the gyro measurement.


18. **Average_timeBodyGyroMag_std**  
This is the average standard deviation of the magnitude of the gyro measurement.


19. **Average_timeBodyGyroJerkMag_mean**  
This is the average mean magnitude of the gyro jerk measurement.


20. **Average_timeBodyGyroJerkMag_std**  
This is the average standard deviation of the magnitude of the gyro jerk measurement.


21. **Average_frequencyBodyAcc_mean_X, Average_frequencyBodyAcc_mean_Y, Average_frequencyBodyAcc_mean_Z**  
These variables provide the average frequency domain mean body acceleration in each of the X, Y, Z axes.  


22. **Average_frequencyBodyAcc_std_X, Average_frequencyBodyAcc_std_Y, Average_frequencyBodyAcc_std_Z**  
These variables provide the average frequency domain standard deviation of the body acceleration in each of the X, Y, Z axes.  


23. **Average_frequencyBodyAccJerk_mean_X, Average_frequencyBodyAccJerk_mean_Y, Average_frequencyBodyAccJerk_mean_Z**  
These variables provide the average frequency domain mean body acceleration jerk in each of the X, Y, Z axes.  


24. **Average_frequencyBodyAccJerk_std_X, Average_frequencyBodyAccJerk_std_Y, Average_frequencyBodyAccJerk_std_Z**  
These variables provide the average frequency domain standard deviation of the body acceleration jerk in each of the X, Y, Z axes.  


25. Average_frequencyBodyGyro_mean_X, Average_frequencyBodyGyro_mean_Y, Average_frequencyBodyGyro_mean_Z**  
These variables provide the average frequency domain gyro mean in each of the X, Y, Z axes.  


26. **Average_frequencyBodyGyro_std_X, Average_frequencyBodyGyro_std_Y, Average_frequencyBodyGyro_std_Z**  
These variables provide the average frequency domain gyro standard deviation in each of the X, Y, Z axes.  


27. **Average_frequencyBodyAccMag_mean**  
This is the average frequency domain mean magnitude of the body acceleration.


28. **Average_frequencyBodyAccMag_std**  
This is the average frequency domain standard deviation of the body acceleration magnitude.


29. **Average_frequencyBodyAccJerkMag_mean**  
This is the average frequency domain mean of the body acceleration jerk magnitude.


30. **Average_frequencyBodyAccJerkMag_std**  
This is the average frequency domain standard deviation of the body acceleration jerk magnitude.


31. **Average_frequencyBodyGyroMag_mean**  


32. **Average_frequencyBodyGyroMag_std**  


33. **Average_frequencyBodyGyroJerkMag_mean**  


34. **Average_frequencyBodyGyroJerkMag_std**  


35. **Subject, Activity**  
These items comprise the basis for each measurement. The Subject field is the id of the person that was measured, while the Activity field provides the identification of the type of activity that was performed by the subject while being measured.
