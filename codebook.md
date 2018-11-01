
title: Codebook for submeanstdtab


# Data report overview
The dataset examined has the following dimensions:


---------------------------------
Feature                    Result
------------------------ --------
Number of observations        180

Number of variables            81
---------------------------------


Feature Selection 
=================

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

In this data set we have the average of each variable for each activity and each subject

# Codebook summary table

------------------------------------------------------------------------------------------
Label   Variable                              Class       # unique  Missing  Description  
                                                            values                        
------- ------------------------------------- --------- ---------- --------- -------------
        **[subject]**                         integer           30  0.00 %   identifier of the person on which obervation were done : 1 to 30          

        **[activitylabels]**                  factor             6  0.00 %   possible values : WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING
, STANDING
, LAYING
   

        **[tbodyacc.mean.x]**                 numeric          180  0.00 %                

        **[tbodyacc.mean.y]**                 numeric          180  0.00 %                

        **[tbodyacc.mean.z]**                 numeric          180  0.00 %                

        **[tbodyacc.std.x]**                  numeric          180  0.00 %                

        **[tbodyacc.std.y]**                  numeric          180  0.00 %                

        **[tbodyacc.std.z]**                  numeric          180  0.00 %                

        **[tgravityacc.mean.x]**              numeric          180  0.00 %                

        **[tgravityacc.mean.y]**              numeric          180  0.00 %                

        **[tgravityacc.mean.z]**              numeric          180  0.00 %                

        **[tgravityacc.std.x]**               numeric          180  0.00 %                

        **[tgravityacc.std.y]**               numeric          180  0.00 %                

        **[tgravityacc.std.z]**               numeric          180  0.00 %                

        **[tbodyaccjerk.mean.x]**             numeric          180  0.00 %                

        **[tbodyaccjerk.mean.y]**             numeric          180  0.00 %                

        **[tbodyaccjerk.mean.z]**             numeric          180  0.00 %                

        **[tbodyaccjerk.std.x]**              numeric          180  0.00 %                

        **[tbodyaccjerk.std.y]**              numeric          180  0.00 %                

        **[tbodyaccjerk.std.z]**              numeric          180  0.00 %                

        **[tbodygyro.mean.x]**                numeric          180  0.00 %                

        **[tbodygyro.mean.y]**                numeric          180  0.00 %                

        **[tbodygyro.mean.z]**                numeric          180  0.00 %                

        **[tbodygyro.std.x]**                 numeric          180  0.00 %                

        **[tbodygyro.std.y]**                 numeric          180  0.00 %                

        **[tbodygyro.std.z]**                 numeric          180  0.00 %                

        **[tbodygyrojerk.mean.x]**            numeric          180  0.00 %                

        **[tbodygyrojerk.mean.y]**            numeric          180  0.00 %                

        **[tbodygyrojerk.mean.z]**            numeric          180  0.00 %                

        **[tbodygyrojerk.std.x]**             numeric          180  0.00 %                

        **[tbodygyrojerk.std.y]**             numeric          180  0.00 %                

        **[tbodygyrojerk.std.z]**             numeric          180  0.00 %                

        **[tbodyaccmag.mean]**                numeric          180  0.00 %                

        **[tbodyaccmag.std]**                 numeric          180  0.00 %                

        **[tgravityaccmag.mean]**             numeric          180  0.00 %                

        **[tgravityaccmag.std]**              numeric          180  0.00 %                

        **[tbodyaccjerkmag.mean]**            numeric          180  0.00 %                

        **[tbodyaccjerkmag.std]**             numeric          180  0.00 %                

        **[tbodygyromag.mean]**               numeric          180  0.00 %                

        **[tbodygyromag.std]**                numeric          180  0.00 %                

        **[tbodygyrojerkmag.mean]**           numeric          180  0.00 %                

        **[tbodygyrojerkmag.std]**            numeric          180  0.00 %                

        **[fbodyacc.mean.x]**                 numeric          180  0.00 %                

        **[fbodyacc.mean.y]**                 numeric          180  0.00 %                

        **[fbodyacc.mean.z]**                 numeric          180  0.00 %                

        **[fbodyacc.std.x]**                  numeric          180  0.00 %                

        **[fbodyacc.std.y]**                  numeric          180  0.00 %                

        **[fbodyacc.std.z]**                  numeric          180  0.00 %                

        **[fbodyacc.meanfreq.x]**             numeric          180  0.00 %                

        **[fbodyacc.meanfreq.y]**             numeric          180  0.00 %                

        **[fbodyacc.meanfreq.z]**             numeric          180  0.00 %                

        **[fbodyaccjerk.mean.x]**             numeric          180  0.00 %                

        **[fbodyaccjerk.mean.y]**             numeric          180  0.00 %                

        **[fbodyaccjerk.mean.z]**             numeric          180  0.00 %                

        **[fbodyaccjerk.std.x]**              numeric          180  0.00 %                

        **[fbodyaccjerk.std.y]**              numeric          180  0.00 %                

        **[fbodyaccjerk.std.z]**              numeric          180  0.00 %                

        **[fbodyaccjerk.meanfreq.x]**         numeric          180  0.00 %                

        **[fbodyaccjerk.meanfreq.y]**         numeric          180  0.00 %                

        **[fbodyaccjerk.meanfreq.z]**         numeric          180  0.00 %                

        **[fbodygyro.mean.x]**                numeric          180  0.00 %                

        **[fbodygyro.mean.y]**                numeric          180  0.00 %                

        **[fbodygyro.mean.z]**                numeric          180  0.00 %                

        **[fbodygyro.std.x]**                 numeric          180  0.00 %                

        **[fbodygyro.std.y]**                 numeric          180  0.00 %                

        **[fbodygyro.std.z]**                 numeric          180  0.00 %                

        **[fbodygyro.meanfreq.x]**            numeric          180  0.00 %                

        **[fbodygyro.meanfreq.y]**            numeric          180  0.00 %                

        **[fbodygyro.meanfreq.z]**            numeric          180  0.00 %                

        **[fbodyaccmag.mean]**                numeric          180  0.00 %                

        **[fbodyaccmag.std]**                 numeric          180  0.00 %                

        **[fbodyaccmag.meanfreq]**            numeric          180  0.00 %                

        **[fbodybodyaccjerkmag.mean]**        numeric          180  0.00 %                

        **[fbodybodyaccjerkmag.std]**         numeric          180  0.00 %                

        **[fbodybodyaccjerkmag.meanfreq]**    numeric          180  0.00 %                

        **[fbodybodygyromag.mean]**           numeric          180  0.00 %                

        **[fbodybodygyromag.std]**            numeric          180  0.00 %                

        **[fbodybodygyromag.meanfreq]**       numeric          180  0.00 %                

        **[fbodybodygyrojerkmag.mean]**       numeric          180  0.00 %                

        **[fbodybodygyrojerkmag.std]**        numeric          180  0.00 %                

        **[fbodybodygyrojerkmag.meanfreq]**   numeric          180  0.00 %                
------------------------------------------------------------------------------------------



