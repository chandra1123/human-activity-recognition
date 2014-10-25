#Human Activity Recognition Study Code Book

###Study Design
Raw data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Script run_analysis.R was run to do following clean up activities:

1. Read training and test data sets in raw data and merge them into one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. These happened to be features containing mean() and std()
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.

Grouped this cleaned data set by subject and activity and summarized the measurements by taking mean. This tidy data set is the output of this study.

### Code book

#####Summarized value of signals by subject and activity. 
* subject                                                int

   subject identifier  
   1..30 unique identifier associated with person who performed the activity
* activity                                               char

   name of activity person was performing when measurement was made.  
   WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* TimeDomainSignalBodyAccelerationmeanX                  number

  Mean value of body acceleration along X direction in time domain signal
* TimeDomainSignalBodyAccelerationmeanY                  number

  Mean value of body acceleration along Y direction in time domain signal
* TimeDomainSignalBodyAccelerationmeanZ                  number

  Mean value of body acceleration along Z direction in time domain signal
* TimeDomainSignalBodyAccelerationstdX                   number

  Standard deviation of body acceleration along X direction in time domain signal
* TimeDomainSignalBodyAccelerationstdY                   number

  Standard deviation of body acceleration along Y direction in time domain signal
* TimeDomainSignalBodyAccelerationstdZ                   number

  Standard deviation of body acceleration along Z direction in time domain signal
* TimeDomainSignalGravityAccelerationmeanX               number
  
  Mean value of gravity acceleration along X direction in time domain signal
* TimeDomainSignalGravityAccelerationmeanY               number

  Mean value of gravity acceleration along Y direction in time domain signal
* TimeDomainSignalGravityAccelerationmeanZ               number
  
  Mean value of gravity acceleration along Z direction in time domain signal
* TimeDomainSignalGravityAccelerationstdX                number

  Standard deviation of gravity acceleration along X direction in time domain signal
* TimeDomainSignalGravityAccelerationstdY                number

  Standard deviation of gravity acceleration along Y direction in time domain signal
* TimeDomainSignalGravityAccelerationstdZ                number

  Standard deviation of gravity acceleration along Z direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkmeanX              number

  Mean value of  body linear jerk along X direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkmeanY              number

  Mean value of  body linear jerk along Y direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkmeanZ              number

  Mean value of  body linear jerk along Z direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkstdX               number

  Standard deviation of  body linear jerk along X direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkstdY               number

  Standard deviation of  body linear jerk along Y direction in time domain signal
* TimeDomainSignalBodyAccelerationJerkstdZ               number

  Standard deviation of  body linear jerk along Z direction in time domain signal
* TimeDomainSignalBodyGyromeanX                          number

  Mean value of  body gyro along X direction in time domain signal
* TimeDomainSignalBodyGyromeanY                          number

  Mean value of  body gyro along Y direction in time domain signal
* TimeDomainSignalBodyGyromeanZ                          number

  Mean value of  body gyro along Z direction in time domain signal
* TimeDomainSignalBodyGyrostdX                           number

  Standard deviation of  body gyro along X direction in time domain signal
* TimeDomainSignalBodyGyrostdY                           number

  Standard deviation of  body gyro along Y direction in time domain signal
* TimeDomainSignalBodyGyrostdZ                           number

  Standard deviation of  body gyro along Z direction in time domain signal
* TimeDomainSignalBodyGyroJerkmeanX                      number

  Mean value of  body gyro jerk along X direction in time domain signal
* TimeDomainSignalBodyGyroJerkmeanY                      number

  Mean value of  body gyro jerk along Y direction in time domain signal
* TimeDomainSignalBodyGyroJerkmeanZ                      number

  Mean value of  body gyro jerk along Z direction in time domain signal
* TimeDomainSignalBodyGyroJerkstdX                       number

  Standard deviation of  body gyro jerk along X direction in time domain signal
* TimeDomainSignalBodyGyroJerkstdY                       number

  Standard deviation of  body gyro jerk along Y direction in time domain signal
* TimeDomainSignalBodyGyroJerkstdZ                       number

  Standard deviation of  body gyro jerk along Z direction in time domain signal
* TimeDomainSignalBodyAccelerationMagnitudemean          number

  Mean value of  body acceleration magnitude in time domain signal
* TimeDomainSignalBodyAccelerationMagnitudestd           number

  Standard deviation of  body acceleration magnitude in time domain signal
* TimeDomainSignalGravityAccelerationMagnitudemean       number

  Mean value of  gravity acceleration magnitude in time domain signal
* TimeDomainSignalGravityAccelerationMagnitudestd        number

  Standard deviation of  gravity acceleration magnitude in time domain signal
* TimeDomainSignalBodyAccelerationJerkMagnitudemean      number

  Mean value of  body acceleration jerk magnitude in time domain signal
* TimeDomainSignalBodyAccelerationJerkMagnitudestd       number

  Standard deviation of  body acceleration jerk magnitude in time domain signal
* TimeDomainSignalBodyGyroMagnitudemean                  number

  Mean value of  body gyro magnitude in time domain signal
* TimeDomainSignalBodyGyroMagnitudestd                   number

  Standard deviation of  body gyro magnitude in time domain signal
* TimeDomainSignalBodyGyroJerkMagnitudemean              number

  Mean value of  body gyro jerk magnitude in time domain signal
* TimeDomainSignalBodyGyroJerkMagnitudestd               number

  Standard deviation of  body gyro jerk magnitude in time domain signal
* FrequencyDomainSignalBodyAccelerationmeanX              number

  Mean value of body acceleration in X direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationmeanY              number

  Mean value of body acceleration in Y direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationmeanZ              number

  Mean value of body acceleration in Z direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationstdX               number

  Standard deviation of body acceleration in X direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationstdY               number

  Standard deviation of body acceleration in Y direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationstdZ               number

  Standard deviation of body acceleration in Z direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkmeanX          number

  Mean value of body acceleration jerk in X direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkmeanY          number

  Mean value of body acceleration jerk in Y direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkmeanZ          number

  Mean value of body acceleration jerk in Z direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkstdX           number

  Standard deviation of body acceleration jerk in X direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkstdY           number

  Standard deviation of body acceleration jerk in Y direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkstdZ           number

  Standard deviation of body acceleration jerk in Z direction in frequency domain signal
* FrequencyDomainSignalBodyGyromeanX                      number

  Mean value of body gyro in X direction in frequency domain signal
* FrequencyDomainSignalBodyGyromeanY                      number

  Mean value of body gyro in Y direction in frequency domain signal
* FrequencyDomainSignalBodyGyromeanZ                      number

  Mean value of body gyro in Z direction in frequency domain signal
* FrequencyDomainSignalBodyGyrostdX                       number

  Standard deviation of body gyro in X direction in frequency domain signal
* FrequencyDomainSignalBodyGyrostdY                       number

  Standard deviation of body gyro in Y direction in frequency domain signal
* FrequencyDomainSignalBodyGyrostdZ                       number

  Standard deviation of body gyro in Z direction in frequency domain signal
* FrequencyDomainSignalBodyAccelerationMagnitudemean      number

  Mean value of body acceleration magnitude in frequency domain signal
* FrequencyDomainSignalBodyAccelerationMagnitudestd       number

  Standard deviation of body acceleration magnitude in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkMagnitudemean  number

  Mean value of body acceleration jerk magnitude in frequency domain signal
* FrequencyDomainSignalBodyAccelerationJerkMagnitudestd   number

  Standard deviation of body acceleration jerk magnitude in frequency domain signal
* FrequencyDomainSignalBodyGyroMagnitudemean              number

  Mean value of body gyro magnitude in frequency domain signal
* FrequencyDomainSignalBodyGyroMagnitudestd               number

  Standard deviation of body gyro magnitude in frequency domain signal
* FrequencyDomainSignalBodyGyroJerkMagnitudemean          number

  Mean value of body gyro jerk magnitude in frequency domain signal
* FrequencyDomainSignalBodyGyroJerkMagnitudestd           number

  Standard deviation of body gyro jerk magnitude in frequency domain signal

**Note**: all signal measurements are in range [-1,1]
