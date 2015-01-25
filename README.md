#Getting and Cleaning Data course project
This README file is intended to provide information about the tidy data set and the script used to create it, that are included in this repository.

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project were downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Files included in this repository
The repository contains four files:  
1. This README.md file  
2. run_analysis.R file. This is the script used to derive the final data set from the original data files.  
3. TidyDataSet.txt file. This is the final, tidy data set that was derived from the original data files.  
4. CodeBook.md file. This document describes the various variables, the data, and any transformations or work that were performed to clean up the data included in the provided data set.  

##Assumptions
In order to use the abovementioned files, the user is expected to have:  
1. Downloaded the raw data zip file and extracted it onto his/her local hard drive.  
2. Downloaded the run_analysis.R script to the same directory in which the top level data directory ("UCI HAR Dataset") was extracted to.  
3. Installed the dplyr package into his/her R environment.  
4. Downloaded the TidyDataSet.txt data set to the same directory in which the script resides *or* run the run_analysis.R script.  

##File usage
The TidyDataSet.txt file may be read into a data frame variable using the following command:  
  someDataFrameVariable<-read.table("TidyDataSet.txt",header=T)  
The data set may then be viewed by using the following command:  
  View(someDataFrameVariable)

