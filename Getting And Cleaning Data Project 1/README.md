# Getting and Cleaning Data Project 1 (Week 3)

This script processes information from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded and the activities labeled manually.

The experiments were intended for machine learning purposes, a large amount of data was collected and data was split into different datasets for feeding into
the machine learning algorithm but we are currently interested in the statistical analysis of the data. This script will perform the following steps:

* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Use descriptive activity names to name the activities in the data set.
* Appropriately label the data set with descriptive variable names. 
* Create a summary data set with the average of each variable for each activity and each subject.

The script expects the Samsung data in your working directory, with the following structure

* At the base level: activity_labels.txt and features.txt
* At the second level: test/subject_test.txt, test/X_test.txt, test/y_test.txt, train/subject_train.txt, train/X_train.txt, train/y_train.txt

The resulting output, at the base level is named "Subject and activity averages.txt"