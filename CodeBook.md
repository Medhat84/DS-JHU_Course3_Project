==================================================================
Human Activity Recognition Using Smartphones Summarized Dataset
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================

- The activity label. 
- An identifier of the subject who carried out the experiment.
- Each average per activity per subject of the 66 variables which summarize the average & standard deviation for time and frequency domain signals. 

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Activity labels are:
==================

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The dataset includes the following variables:
=========================================

"1" "activity"
"2" "subject"
"3" "timeBodyAcc-mean-X"
"4" "timeBodyAcc-mean-Y"
"5" "timeBodyAcc-mean-Z"
"6" "timeBodyAcc-std-X"
"7" "timeBodyAcc-std-Y"
"8" "timeBodyAcc-std-Z"
"9" "timeGravityAcc-mean-X"
"10" "timeGravityAcc-mean-Y"
"11" "timeGravityAcc-mean-Z"
"12" "timeGravityAcc-std-X"
"13" "timeGravityAcc-std-Y"
"14" "timeGravityAcc-std-Z"
"15" "timeBodyAccJerk-mean-X"
"16" "timeBodyAccJerk-mean-Y"
"17" "timeBodyAccJerk-mean-Z"
"18" "timeBodyAccJerk-std-X"
"19" "timeBodyAccJerk-std-Y"
"20" "timeBodyAccJerk-std-Z"
"21" "timeBodyGyro-mean-X"
"22" "timeBodyGyro-mean-Y"
"23" "timeBodyGyro-mean-Z"
"24" "timeBodyGyro-std-X"
"25" "timeBodyGyro-std-Y"
"26" "timeBodyGyro-std-Z"
"27" "timeBodyGyroJerk-mean-X"
"28" "timeBodyGyroJerk-mean-Y"
"29" "timeBodyGyroJerk-mean-Z"
"30" "timeBodyGyroJerk-std-X"
"31" "timeBodyGyroJerk-std-Y"
"32" "timeBodyGyroJerk-std-Z"
"33" "timeBodyAccMag-mean"
"34" "timeBodyAccMag-std"
"35" "timeGravityAccMag-mean"
"36" "timeGravityAccMag-std"
"37" "timeBodyAccJerkMag-mean"
"38" "timeBodyAccJerkMag-std"
"39" "timeBodyGyroMag-mean"
"40" "timeBodyGyroMag-std"
"41" "timeBodyGyroJerkMag-mean"
"42" "timeBodyGyroJerkMag-std"
"43" "freqBodyAcc-mean-X"
"44" "freqBodyAcc-mean-Y"
"45" "freqBodyAcc-mean-Z"
"46" "freqBodyAcc-std-X"
"47" "freqBodyAcc-std-Y"
"48" "freqBodyAcc-std-Z"
"49" "freqBodyAccJerk-mean-X"
"50" "freqBodyAccJerk-mean-Y"
"51" "freqBodyAccJerk-mean-Z"
"52" "freqBodyAccJerk-std-X"
"53" "freqBodyAccJerk-std-Y"
"54" "freqBodyAccJerk-std-Z"
"55" "freqBodyGyro-mean-X"
"56" "freqBodyGyro-mean-Y"
"57" "freqBodyGyro-mean-Z"
"58" "freqBodyGyro-std-X"
"59" "freqBodyGyro-std-Y"
"60" "freqBodyGyro-std-Z"
"61" "freqBodyAccMag-mean"
"62" "freqBodyAccMag-std"
"63" "freqBodyAccJerkMag-mean"
"64" "freqBodyAccJerkMag-std"
"65" "freqBodyGyroMag-mean"
"66" "freqBodyGyroMag-std"
"67" "freqBodyGyroJerkMag-mean"
"68" "freqBodyGyroJerkMag-std"

Processing made on the original dataset:
=====================================

- Training & test data for the original features have been extracted. They are normalized, so ranged from -1:1
- Activity labels for training & test data have been extracted.
- Names of features & activities have been extracted.
- Subject labels for training & test data have been extracted.
- Training & test data have been merged together to form one dataset with the corresponding labels for activities & subjects.
- Feautures names are assigned to columns(variables) and activity names have replaced the numeric values representing activities.
- All variables are excluded from dataset except for mean & standard deviation of measurements.
- Some mistakes are noticed in variable names. So, they have been corrected.
- Dataset have been grouped by activity then by subject and summarized by the mean values for each of the 66 variables.
- Dataset has been exported to a text file.  