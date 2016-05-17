# Code Book

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Subject                     Integer – 1 : 30
Activity_Level              Factor with 6 levels
           1. WALKING
           2. WALKING_UPSTAIRS
           3. WALKING_DOWNSTAIRS
           4. SITTING
           5. STANDING
           6 LAYING
tBodyAcc.mean...X                       Numeric 
tBodyAcc.mean...Y                       Numeric  
tBodyAcc.mean...Z                       Numeric
tGravityAcc.mean...X                    Numeric 
tGravityAcc.mean...Y                    Numeric  
tGravityAcc.mean...Z                    Numeric  
tBodyAccJerk.mean...X                   Numeric  
tBodyAccJerk.mean...Y                   Numeric  
tBodyAccJerk.mean...Z                   Numeric  
tBodyGyro.mean...X                      Numeric  
tBodyGyro.mean...Y                      Numeric 
tBodyGyro.mean...Z                      Numeric 
tBodyGyroJerk.mean...X                  Numeric 
tBodyGyroJerk.mean...Y                  Numeric 
tBodyGyroJerk.mean...Z                  Numeric 
tBodyAccMag.mean..                      Numeric  
tGravityAccMag.mean..                   Numeric 
tBodyAccJerkMag.mean..                  Numeric 
tBodyGyroMag.mean..                     Numeric 
tBodyGyroJerkMag.mean..                 Numeric 
fBodyAcc.mean...X                       Numeric 
fBodyAcc.mean...Y                       Numeric 
fBodyAcc.mean...Z                       Numeric 
fBodyAcc.meanFreq...X                   Numeric 
fBodyAcc.meanFreq...Y                   Numeric 
fBodyAcc.meanFreq...Z                   Numeric 
fBodyAccJerk.mean...X                   Numeric 
fBodyAccJerk.mean...Y                   Numeric  
fBodyAccJerk.mean...Z                   Numeric  
fBodyAccJerk.meanFreq...X               Numeric  
fBodyAccJerk.meanFreq...Y               Numeric  
fBodyAccJerk.meanFreq...Z               Numeric  
fBodyGyro.mean...X                      Numeric  
fBodyGyro.mean...Y                      Numeric  
fBodyGyro.mean...Z                      Numeric  
fBodyGyro.meanFreq...X                  Numeric  
fBodyGyro.meanFreq...Y                  Numeric  
fBodyGyro.meanFreq...Z                  Numeric  
fBodyAccMag.mean..                      Numeric 
fBodyAccMag.meanFreq..                  Numeric 
fBodyBodyAccJerkMag.mean..              Numeric 
fBodyBodyAccJerkMag.meanFreq..          Numeric
fBodyBodyGyroMag.mean..                 Numeric
fBodyBodyGyroMag.meanFreq..             Numeric
fBodyBodyGyroJerkMag.mean..             Numeric
fBodyBodyGyroJerkMag.meanFreq..         Numeric
angle.tBodyAccMean.gravity.             Numeric
angle.tBodyAccJerkMean..gravityMean.    Numeric 
angle.tBodyGyroMean.gravityMean.        Numeric 
angle.tBodyGyroJerkMean.gravityMean.    Numeric
angle.X.gravityMean.                    Numeric
angle.Y.gravityMean.                    Numeric
angle.Z.gravityMean.                    Numeric
tBodyAcc.std...X                        Numeric 
tBodyAcc.std...Y                        Numeric
tBodyAcc.std...Z                        Numeric
tGravityAcc.std...X                     Numeric 
tGravityAcc.std...Y                     Numeric 
tGravityAcc.std...Z                     Numeric 
tBodyAccJerk.std...X                    Numeric
tBodyAccJerk.std...Y                    Numeric 
tBodyAccJerk.std...Z                    Numeric
tBodyGyro.std...X                       Numeric
tBodyGyro.std...Y                       Numeric 
tBodyGyro.std...Z                       Numeric
tBodyGyroJerk.std...X                   Numeric
tBodyGyroJerk.std...Y                   Numeric
tBodyGyroJerk.std...Z                   Numeric
tBodyAccMag.std..                       Numeric
tGravityAccMag.std..                    Numeric 
tBodyAccJerkMag.std..                   Numeric 
tBodyGyroMag.std..                      Numeric 
tBodyGyroJerkMag.std..                  Numeric
fBodyAcc.std...X                        Numeric 
fBodyAcc.std...Y                        Numeric
fBodyAcc.std...Z                        Numeric
fBodyAccJerk.std...X                    Numeric
fBodyAccJerk.std...Y                    Numeric
fBodyAccJerk.std...Z                    Numeric
fBodyGyro.std...X                       Numeric
fBodyGyro.std...Y                       Numeric 
fBodyGyro.std...Z                       Numeric
fBodyAccMag.std..                       Numeric
fBodyBodyAccJerkMag.std..               Numeric
fBodyBodyGyroMag.std..                  Numeric
fBodyBodyGyroJerkMag.std..              Numeric

##Reference

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
