# Study Design

This is based on an original research published at the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) repository

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded and the activities labeled manually.

The features selected come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Original research: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

# Code Book
## Variables

| Name | Data Type | Values | Description |
|------|-----------|--------|-------------|
| subject | Categorical | 1 to 30 | Numeric Identifier of the person being studied |
| activity | Categorical | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING | Description of the activity being performed |
| tBodyAcc.mean...X | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, mean value, X-Axis |
| tBodyAcc.mean...Y | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, mean value, Y-Axis |
| tBodyAcc.mean...Z | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, mean value, Z-Axis |
| tBodyAcc.std...X | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, standard deviation, X-Axis |
| tBodyAcc.std...Y | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, standard deviation, Y-Axis |
| tBodyAcc.std...Z | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, standard deviation, Z-Axis |
| tGravityAcc.mean...X | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, mean value, X-Axis |
| tGravityAcc.mean...Y | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, mean value, Y-Axis |
| tGravityAcc.mean...Z | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, mean value, Z-Axis |
| tGravityAcc.std...X | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, standard deviation, X-Axis |
| tGravityAcc.std...Y | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, standard deviation, Y-Axis |
| tGravityAcc.std...Z | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, standard deviation, Z-Axis |
| tBodyAccJerk.mean...X | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, mean value, X-Axis |
| tBodyAccJerk.mean...Y | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, mean value, Y-Axis |
| tBodyAccJerk.mean...Z | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, mean value, Z-Axis |
| tBodyAccJerk.std...X | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, standard deviation, X-Axis |
| tBodyAccJerk.std...Y | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, standard deviation, Y-Axis |
| tBodyAccJerk.std...Z | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, standard deviation, Z-Axis |
| tBodyGyro.mean...X | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, mean value, X-Axis |
| tBodyGyro.mean...Y | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, mean value, Y-Axis |
| tBodyGyro.mean...Z | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, mean value, Z-Axis |
| tBodyGyro.std...X | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, standard deviation, X-Axis |
| tBodyGyro.std...Y | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, standard deviation, Y-Axis |
| tBodyGyro.std...Z | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, standard deviation, Z-Axis |
| tBodyGyroJerk.mean...X | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, mean value, X-Axis |
| tBodyGyroJerk.mean...Y | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, mean value, Y-Axis |
| tBodyGyroJerk.mean...Z | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, mean value, Z-Axis |
| tBodyGyroJerk.std...X | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, standard deviation, X-Axis |
| tBodyGyroJerk.std...Y | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, standard deviation, Y-Axis |
| tBodyGyroJerk.std...Z | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, standard deviation, Z-Axis |
| tBodyAccMag.mean.. | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, mean value, Magnitude |
| tBodyAccMag.std.. | Continuous | [-1,1] | Body linear acceleration (time domain), normalized, standard deviation, Magnitude |
| tGravityAccMag.mean.. | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, mean value, Magnitude |
| tGravityAccMag.std.. | Continuous | [-1,1] | Gravity component of acceleration (time domain), normalized, standard deviation, Magnitude |
| tBodyAccJerkMag.mean.. | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, mean value, Magnitude |
| tBodyAccJerkMag.std.. | Continuous | [-1,1] | Body jerk acceleration (time domain), normalized, standard deviation, Magnitude |
| tBodyGyroMag.mean.. | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, mean value, Magnitude |
| tBodyGyroMag.std.. | Continuous | [-1,1] | Body gyroscopic measurement (time domain), normalized, standard deviation, Magnitude |
| tBodyGyroJerkMag.mean.. | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, mean value, Magnitude |
| tBodyGyroJerkMag.std.. | Continuous | [-1,1] | Body gyroscopic jerk motion (time domain), normalized, standard deviation, Magnitude |
| fBodyAcc.mean...X | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, mean value, X-Axis |
| fBodyAcc.mean...Y | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, mean value, Y-Axis |
| fBodyAcc.mean...Z | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, mean value, Z-Axis |
| fBodyAcc.std...X | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, standard deviation, X-Axis |
| fBodyAcc.std...Y | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, standard deviation, Y-Axis |
| fBodyAcc.std...Z | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, standard deviation, Z-Axis |
| fBodyAccJerk.mean...X | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, mean value, X-Axis |
| fBodyAccJerk.mean...Y | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, mean value, Y-Axis |
| fBodyAccJerk.mean...Z | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, mean value, Z-Axis |
| fBodyAccJerk.std...X | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, standard deviation, X-Axis |
| fBodyAccJerk.std...Y | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, standard deviation, Y-Axis |
| fBodyAccJerk.std...Z | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, standard deviation, Z-Axis |
| fBodyGyro.mean...X | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, mean value, X-Axis |
| fBodyGyro.mean...Y | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, mean value, Y-Axis |
| fBodyGyro.mean...Z | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, mean value, Z-Axis |
| fBodyGyro.std...X | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, standard deviation, X-Axis |
| fBodyGyro.std...Y | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, standard deviation, Y-Axis |
| fBodyGyro.std...Z | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, standard deviation, Z-Axis |
| fBodyAccMag.mean.. | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, mean value, Magnitude |
| fBodyAccMag.std.. | Continuous | [-1,1] | Body linear acceleration (frequency domain), normalized, standard deviation, Magnitude |
| fBodyBodyAccJerkMag.mean.. | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, mean value, Magnitude |
| fBodyBodyAccJerkMag.std.. | Continuous | [-1,1] | Body jerk acceleration (frequency domain), normalized, standard deviation, Magnitude |
| fBodyBodyGyroMag.mean.. | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, mean value, Magnitude |
| fBodyBodyGyroMag.std.. | Continuous | [-1,1] | Body gyroscopic measurement (frequency domain), normalized, standard deviation, Magnitude |
| fBodyBodyGyroJerkMag.mean.. | Continuous | [-1,1] | Body gyroscopic jerk motion (frequency domain), normalized, mean value, Magnitude |
| fBodyBodyGyroJerkMag.std.. | Continuous | [-1,1] | Body gyroscopic jerk motion (frequency domain), normalized, standard deviation, Magnitude |

Note that normalized and categorical values are adimensional (measurement units do not apply)
Note: subject is apparently numeric but there is no true ordering (the user with id 1 is not "smaller" than the user with id 2), therefore it is actually categorical with a label that happens to also be a number

## Summary Choices
The original data included aggregates of secondary measurements, for example fBodyGyro-meanFreq...X. Those values have been removed from the summary analysis
(the analysis already includes fBodyGyro.mean...X for providing the mean in the frequency domain)