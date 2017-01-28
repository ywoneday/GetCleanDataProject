Feature Selection 
=================

Human Activity Recognition database built from the recordings of **30 subjects** performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.  

The activities are   
1. WALKING   
2. WALKING_UPSTAIRS   
3. WALKING_DOWNSTAIRS   
4. SITTING   
5. STANDING  
6. LAYING   

The raw features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

A set of variables that were estimated from these signals, we select the mean() and std() vriables for futher process.
We summarized the average of each variable for each activity and each subject.

The complete list of variables of each feature vector is:
subject  
activity  
Time Body accelerometer -mean()-X -mean  
Time Body accelerometer -mean()-Y -mean  
Time Body accelerometer -mean()-Z -mean  
Time Body accelerometer -std()-X -mean  
Time Body accelerometer -std()-Y -mean  
Time Body accelerometer -std()-Z -mean  
tGravity accelerometer -mean()-X -mean  
tGravity accelerometer -mean()-Y -mean  
tGravity accelerometer -mean()-Z -mean  
tGravity accelerometer -std()-X -mean  
tGravity accelerometer -std()-Y -mean  
tGravity accelerometer -std()-Z -mean  
Time Body accelerometer Jerk signals -mean()-X -mean  
Time Body accelerometer Jerk signals -mean()-Y -mean  
Time Body accelerometer Jerk signals -mean()-Z -mean  
Time Body accelerometer Jerk signals -std()-X -mean  
Time Body accelerometer Jerk signals -std()-Y -mean  
Time Body accelerometer Jerk signals -std()-Z -mean  
Time Body gyroscope -mean()-X -mean  
Time Body gyroscope -mean()-Y -mean  
Time Body gyroscope -mean()-Z -mean  
Time Body gyroscope -std()-X -mean  
Time Body gyroscope -std()-Y -mean  
Time Body gyroscope -std()-Z -mean  
Time Body gyroscope Jerk signals -mean()-X -mean  
Time Body gyroscope Jerk signals -mean()-Y -mean  
Time Body gyroscope Jerk signals -mean()-Z -mean  
Time Body gyroscope Jerk signals -std()-X -mean  
Time Body gyroscope Jerk signals -std()-Y -mean  
Time Body gyroscope Jerk signals -std()-Z -mean  
Time Body accelerometer magnitude -mean() -mean  
Time Body accelerometer magnitude -std() -mean  
tGravity accelerometer magnitude -mean() -mean  
tGravity accelerometer magnitude -std() -mean  
Time Body accelerometer Jerk signals magnitude -mean() -mean  
Time Body accelerometer Jerk signals magnitude -std() -mean  
Time Body gyroscope magnitude -mean() -mean  
Time Body gyroscope magnitude -std() -mean  
Time Body gyroscope Jerk signals magnitude -mean() -mean  
Time Body gyroscope Jerk signals magnitude -std() -mean  
FFT Body accelerometer -mean()-X -mean  
FFT Body accelerometer -mean()-Y -mean  
FFT Body accelerometer -mean()-Z -mean  
FFT Body accelerometer -std()-X -mean  
FFT Body accelerometer -std()-Y -mean  
FFT Body accelerometer -std()-Z -mean  
FFT Body accelerometer Jerk signals -mean()-X -mean  
FFT Body accelerometer Jerk signals -mean()-Y -mean  
FFT Body accelerometer Jerk signals -mean()-Z -mean  
FFT Body accelerometer Jerk signals -std()-X -mean  
FFT Body accelerometer Jerk signals -std()-Y -mean  
FFT Body accelerometer Jerk signals -std()-Z -mean  
FFT Body gyroscope -mean()-X -mean  
FFT Body gyroscope -mean()-Y -mean  
FFT Body gyroscope -mean()-Z -mean  
FFT Body gyroscope -std()-X -mean  
FFT Body gyroscope -std()-Y -mean  
FFT Body gyroscope -std()-Z -mean  
FFT Body accelerometer magnitude -mean() -mean  
FFT Body accelerometer magnitude -std() -mean  
FFT Body accelerometer Jerk signals magnitude -mean() -mean  
FFT Body accelerometer Jerk signals magnitude -std() -mean  
FFT Body gyroscope magnitude -mean() -mean  
FFT Body gyroscope magnitude -std() -mean  
FFT Body gyroscope Jerk signals magnitude -mean() -mean  
FFT Body gyroscope Jerk signals magnitude -std() -mean  


