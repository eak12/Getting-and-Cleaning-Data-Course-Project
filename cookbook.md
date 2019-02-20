Cook Book 

  

Introduction 

  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

  

Study Design 

  

Variables/columns containing &quot;std&quot; (standard deviation) and &quot;mean&quot; were subset from the raw data (see Appendix One).  That is to say, the measurements extracted concerned only the mean and deviation for each measurement. 

  

Moreover, the means of those measurements were made and grouped by subject (subject of experiment) and activity (Walking, sitting, etc). 

  

Tidy Data Set Files and Variables 

  

MeanAngle.csv:                180 obs. of 9 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. anglemeantbodyaccgravity: 

 - mean angle(tBodyAccMean,gravity). 

- mean body angular velocity. 

- acc denotes sensor signal accelerometer. 

- acelerometer has body and gravity component signals. 

- data type num: (5 rows) 0.00771 0.00771 0.00771 0.00771 0.00771 ... 

  

4. anglemeantbodyaccjerkgravity: 

  

- mean angle(tBodyAccJerkMean,gravityMean). 

- tBodyAccJerk is Body linear and angular velocity signals combined. 

- body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

- data type num: (5 rows) 0.00265 0.00265 0.00265 0.00265 0.00265 ... 

  

5. anglemeantbodyaccjerkgravity: 

  

- mean angle(tBodyGyroMean,gravityMean). 

- gyro denotes sensor signal gyroscope. 

- data type num: (5 rows) 0.0177 0.0177 0.0177 0.0177 0.0177 .. 

  

6. anglemeantbodygyrojerkgravity. 

  

- mean angle(tBodyGyroJerkMean,gravityMean) 

- data type num: (5 rows) -0.00922 -0.00922 -0.00922 -0.00922 -0.00922 ... 

  

7. anglemeanxgravity: 

  

- mean angle(X,gravityMean). 

- X direction 

- data type num: (5 rows) -0.748 -0.581 -0.714 -0.77 -0.666 ... 

  

8. anglemeanygravity: 

  

- mean angle(Y,gravityMean). 

- Y direction. 

- data type num: (5 rows) 0.192 0.34 0.258 0.229 0.322 ... 

  

9. anglemeanzgravity: 

  

- mean angle(Z,gravityMean). 

- Z direction. 

- data type num: (5 rows) 0.0283 0.1894 0.0233 0.0241 -0.048 ... 

  

MeantBody.csv:           180 obs. of 14 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity: (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_tbodyacc_minus_mean_minus_x : 

  

- Mean of tBodyAcc-mean()-X. 

- body denotes body motion component. 

- X direction. 

- acc denotes accelerometer sensor signal. 

- bodyacc denotes acceleration signal. 

- data type num: (5 rows) 0.274 0.274 0.274 0.274 0.274 ... 

  

4. mean_tbodyacc_minus_mean_minus_y : 

  

- Y direction. 

- Mean of tBodyAcc-mean()-Y. 

- data type num: (5 rows) -0.0177 -0.0177 -0.0177 -0.0177 -0.0177 ... 

  

5. mean_tbodyacc_minus_mean_minus_z : 

  

- Z direction. 

- data type num: (5 rows) -0.109 -0.109 -0.109 -0.109 -0.109 ... 

  

6. mean_tbodyacc_minus_std_minus_x : 

  

- std denotes standard deviation. 

- Mean of tBodyAcc-std()-X 

- data type num: (5 rows) -0.608 -0.608 -0.608 -0.608 -0.608 ... 

  

7. mean_tbodyacc_minus_std_minus_y : 

  

- Mean of tBodyAcc-std()-Y. 

- data type num: (5 rows) -0.51 -0.51 -0.51 -0.51 -0.51 ... 

  

8. mean_tbodyacc_minus_std_minus_z : 

  

- Mean of tBodyAcc-std()-Z. 

- data type num: (5 rows) -0.613 -0.613 -0.613 -0.613 -0.613 ... 

  

9. mean_tbodygyro_minus_mean_minus_x : 

  

- gyro denotes gyroscope sensor signal. 

- Mean of tBodyGyro-mean()-X. 

- data type num: (5 rows) -0.031 -0.031 -0.031 -0.031 -0.031 ... 

  

10. mean_tbodygyro_minus_mean_minus_y : 

  

- Mean of tBodyGyro-mean()-Y. 

- data type num: (5 rows) -0.0747 -0.0747 -0.0747 -0.0747 -0.0747 ... 

  

11. mean_tbodygyro_minus_mean_minus_z : 

  

- Mean of tBodyGyro-mean()-Z. 

- data type num: (5 rows) 0.0641 0.0984 0.0945 0.0844 0.0851 ... 

  

12. mean_tbodygyro_minus_std_minus_x : 

  

- Mean of tBodyGyro-std()-X. 

- data type num: (5 rows) -0.721 -0.721 -0.721 -0.721 -0.721 ... 

  

13. mean_tbodygyro_minus_std_minus_y : 

  

- Mean of tBodyGyro-std()-Y. 

- data type num: (5 rows) -0.683 -0.683 -0.683 -0.683 -0.683 ... 

  

14. mean_tbodygyro_minus_std_minus_z : 

  

- Mean of tBodyGyro-std()-Z. 

- data type num: (5 rows) -0.654 -0.654 -0.654 -0.654 -0.654 ... 

  

MeanTGravity.csv:     180 obs. of 8 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_tgravityacc_minus_mean_minus_x : 

  

- Mean of tGravityAcc-mean()-X. 

- gravity motion component. 

- acc denotes accelerometer sensor signal. 

- X direction. 

- data type num: (5 rows) 0.669 0.669 0.669 0.669 0.669 ... 

  

4. mean_tgravityacc_minus_mean_minus_y : 

  

- Y direction. 

- Mean of tGravityAcc-mean()-Y. 

- data type num: (5 rows) 0.00404 0.00404 0.00404 0.00404 0.00404 ... 

  

5. mean_tgravityacc_minus_mean_minus_z : 

  

- Z direction. 

- Mean of tGravityAcc-mean()-Z 

- data type num: (5 rows) 0.0922 0.0922 0.0922 0.0922 0.0922 ... 

  

6. mean_tgravityacc_minus_std_minus_x: 

  

- Mean of tGravityAcc-std()-X. 

- data type num: (5 rows) -0.965 -0.965 -0.965 -0.965 -0.965 ... 

  

7. mean_tgravityacc_minus_std_minus_y : 

  

- tGravityAcc-std()-Y. 

- data type num: (5 rows) -0.954 -0.954 -0.954 -0.954 -0.954 ... 

  

8. mean_tgravityacc_minus_std_minus_z : 

  

- Mean of tGravityAcc-std()-Z. 

- data type num: (5 rows) -0.939 -0.939 -0.939 -0.939 -0.939 ... 

  

MeanTBodyJerk.csv :  180 obs. of 14 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_tbodyaccjerk_minus_mean_minus_x: 

  

- Mean of tBodyAccJerk-mean()-X. 

- acc denotes accelerometer sensor signal. 

- Jerk Body linear and angular velocity signals combined. 

- body linear acceleration and angular velocity were derived in time to obtain Jerk signals 

- data type num:  (5 rows) 0.0789 0.0789 0.0789 0.0789 0.0789 ... 

  

4. mean_tbodyaccjerk_minus_mean_minus_y : 

  

- Mean of tBodyAccJerk-mean()-Y. 

- Data type num: (5 rows) 0.00795 0.00795 0.00795 0.00795 0.00795 ... 

  

5. mean_tbodyaccjerk_minus_mean_minus_z : 

  

- data type num. 

- Mean of tBodyAccJerk-mean()-Z. 

  

6. mean_tbodyaccjerk_minus_std_minus_x : 

  

- Mean of tBodyAccJerk-std()-X. 

- std denotes standard dieviation. 

- data type num. 

  

7. mean_tbodyaccjerk_minus_std_minus_y : 

  

- Mean of tBodyAccJerk-std()-Y. 

- data type num. 

  

8. mean_tbodyaccjerk_minus_std_minus_z : 

  

- Mean of tBodyAccJerk-std()-Z. 

- data type num. 

  

9. mean_tbodygyrojerk_minus_mean_minus_x : 

  

- Mean of tBodyGyroJerk-mean()-X. 

- data type num. 

  

10. mean_tbodygyrojerk_minus_mean_minus_y : 

  

- Mean of tBodyGyroJerk-mean()-Y. 

- data type num. 

  

11. mean_tbodygyrojerk_minus_mean_minus_z : 

  

- data type num. 

- Mean of tBodyGyroJerk-mean()-Z 

 

12. mean_tbodygyrojerk_minus_std_minus_x : 

  - data type num. 

  - Mean of tBodyGyroJerk-std()-X. 

13. mean_tbodygyrojerk_minus_std_minus_y : 

 

  - data type num. 

  - Mean of tBodyGyroJerk-std()-Y. 

 

14. mean_tbodygyrojerk_minus_std_minus_z : 

   

- Mean of tBodyGyroJerk-std()-Z. 

  - data type num. 

  

MeanTMag.csv         180 obs. of 12 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_tbodyaccmag_minus_mean : 

  

- Mean of TBodyAccMag-mean(). 

- body denotes body motion component, or linear acceleration (magnitude of three-dimensional signals) 

- acc denotes accelerometer sensor signal. 

- Mag denotes magnitude. 

- Magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

 - Data type num: (5 rows) -0.548 -0.548 -0.548 -0.548 -0.548 … 

  

4. mean_tbodyaccmag_minus_std: 

 - Mean of TBodyAccMag-std() 

 - Std denotes standard deviation. 

 - data type num: -0.591 -0.591 -0.591 -0.591 -0.591 ... 

5. mean_tgravityaccmag_minus_mean: 

 

  - Mean of TGravityAccMag-mean() 

 - gravity denotes gravity motion component. 

 - The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 

 - data type num: -0.548 -0.548 -0.548 -0.548 -0.548 … 

 

6. mean_tgravityaccmag_minus_std: 

 

  - Mean of TGravityAccMag-std() 

  - data type num: -0.591 -0.591 -0.591 -0.591 -0.591 … 

 

4. mean_tbodyaccjerkmag_minus_mean: 

  - Mean of TBodyAccJerkMag-mean() 

  - data type num: -0.649 -0.649 -0.649 -0.649 -0.649 ... 

5. mean_tbodyjerkmag_minus_std: 

  - Mean of TBodyAccJerkMag-std() 

  - data type num: -0.628 -0.628 -0.628 -0.628 -0.628 ... 

6. mean_tbodygyromag_minus_mean: 

  - Mean of TBodyGyroMag-mean() 

  - data type num: -0.605 -0.605 -0.605 -0.605 -0.605 ... 

7. mean_tbodygyromag_minus_std: 

  - Mean of TBodyGyroMag-std() 

  - data type num: -0.663 -0.663 -0.663 -0.663 -0.663 ... 

8. mean_tbodygyrojerkmag_minus_mean: 

  - Mean of TBodyGyroJerkMag-mean() 

  - data type num: -0.762 -0.762 -0.762 -0.762 -0.762 ... 

9. mean_tbodygyrojerkmag_minus_std: 

  - Mean of TBodyGyroJerkMag-std(). 

  - data type num: -0.778 -0.778 -0.778 -0.778 -0.778 ... 

  

MeanFourierTransformBody.csv:          180 obs. of 20 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_fast_fourier_transform_bodyacc_minus_mean_minus_x: 

  - fBodyAcc-mean()-X 

  - f to indicate frequency domain signals. 

  - The Fourier transform ( FT ) decomposes a function into the frequencies that make it up, in a way similar to how a musical chord can be expressed as the frequencies (or pitches) of its constituent notes. 

  - Here the fast fourier transform (FFT) was applied. 

  - Body denotes body motion component, or body linear (in x direction) acceleration. 

  - num: (5 rows) -0.623 -0.623 -0.623 -0.623 -0.623 ... 

4. mean_fast_fourier_transform_bodyacc_minus_mean_minus_y: 

  - fBodyAcc-mean()-Y 

  - num: (5 rows) -0.537 -0.537 -0.537 -0.537 -0.537 ... 

5. mean_fast_fourier_transform_bodyacc_minus_mean_minus_z: 

  - fBodyAcc-mean()-Z 

  - num: (5 rows) -0.665 -0.665 -0.665 -0.665 -0.665 ... 

6. mean_fast_fourier_transform_bodyacc_minus_std_minus_x: 

  - fBodyAcc-std()-X 

  - num: (5 rows) -0.603 -0.603 -0.603 -0.603 -0.603 ... 

7. mean_fast_fourier_transform_bodyacc_minus_std_minus_y: 

  - fBodyAcc-std()-Y 

  - num: (5 rows) -0.528 -0.528 -0.528 -0.528 -0.528 ... 

8. mean_fast_fourier_transform_bodyacc_minus_std_minus_z: 

  - fBodyAcc-std()-Z 

  - num: (5 rows) -0.618 -0.618 -0.618 -0.618 -0.618 ... 

9. mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_x: 

  - fBodyAcc-meanFreq()-X 

  - num: (5 rows) -0.221 -0.221 -0.221 -0.221 -0.221 ... 

10. mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_y: 

  - fBodyAcc-meanFreq()-Y 

  - num: (5 rows) 0.16043 0.04311 0.06393 0.01288 -0.00369 ... 

11. mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_z: 

  - fBodyAcc-meanFreq()-Z 

  - num: (5 rows) 0.0473 0.0473 0.0473 0.0473 0.0473 ... 

12. mean_fast_fourier_transform_bodygyro_minus_mean_minus_x: 

  - fBodyGyro-mean()-X 

  - num: (5 rows) -0.672 -0.672 -0.672 -0.672 -0.672 ... 

13. mean_fast_fourier_transform_bodygyro_minus_mean_minus_y: 

  - fBodyGyro-mean()-Y 

  - num: (5 rows) -0.706 -0.706 -0.706 -0.706 -0.706 ... 

14. mean_fast_fourier_transform_bodygyro_minus_mean_minus_z: 

  - fBodyGyro-mean()-Z 

  - num: (5 rows) -0.367 -0.283 -0.538 -0.398 -0.109 ... 

15. mean_fast_fourier_transform_bodygyro_minus_std_minus_x: 

  - fBodyGyro-std()-X 

  - num: (5 rows) -0.739 -0.739 -0.739 -0.739 -0.739 ... 

16. mean_fast_fourier_transform_bodygyro_minus_std_minus_y: 

  - fBodyGyro-std()-Y 

  - num: (5 rows) -0.674 -0.674 -0.674 -0.674 -0.674 ... 

17. mean_fast_fourier_transform_bodygyro_minus_std_minus_z: 

  - fBodyGyro-std()-Z 

  - num: (5 rows) -0.69 -0.69 -0.69 -0.69 -0.69 ... 

18. mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_x: 

  - fBodyGyro-meanFreq()-X 

  - num: (5 rows) -0.101 -0.101 -0.101 -0.101 -0.101 ... 

19. mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_y: 

  - fBodyGyro-meanFreq()-Y 

  - num: (5 rows) -0.174 -0.174 -0.174 -0.174 -0.174 ... 

20. mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_z : 

  - fBodyGyro-meanFreq()-Z 

  - num: (5 rows) -0.0514 -0.0514 -0.0514 -0.0514 -0.0514 ... 

  

MeanFBodyAccJerk.csv:                   180 obs. of 11 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_fast_fourier_transform_bodyaccjerk_minus_mean_minus_x: 

  - fBodyAccJerk-mean()-X. 

  - &#39;f&#39; to indicate frequency domain signals. 

  - The Fourier transform ( FT ) decomposes a [function](https://en.wikipedia.org/wiki/Function_(mathematics)) of time (a _signal_) into the frequencies that make it up, in a way similar to how a musical [chord](https://en.wikipedia.org/wiki/Chord_(music)) can be expressed as the frequencies (or pitches) of its constituent notes. 

  - Here the fast fourier transform (FFT) was applied. 

  - Body linear and angular velocity signals were combined.  this is called jerk signals. 

  - X denotes X direction. 

  - num: (5 rows) -0.657 -0.657 -0.657 -0.657 -0.657 ... 

4. mean_fast_fourier_transform_bodyaccjerk _minus_mean_minus_y: 

  - fBodyAccJerk-mean()-Y 

  - num: (5 rows) -0.629 -0.629 -0.629 -0.629 -0.629 ... 

5. mean_fast_fourier_transform_bodyaccjerk _minus_mean_minus_z: 

  - fBodyAccJerk -mean()-Z 

  - num: (5 rows) -0.744 -0.744 -0.744 -0.744 -0.744 ... 

6. mean_fast_fourier_transform_bodyaccjerk _minus_std_minus_x: 

  - fBodyAccJerk -std()-X 

  - num: (5 rows) -0.655 -0.655 -0.655 -0.655 -0.655 ... 

7. mean_fast_fourier_transform_bodyaccjerk _minus_std_minus_y: 

  - fBodyAccJerk -std()-Y 

  - num: (5 rows) -0.612 -0.612 -0.612 -0.612 -0.612 … 

8. mean_fast_fourier_transform_bodyaccjerk _minus_std_minus_z: 

  - fBodyAccJerk -std()-Z 

  - num: (5 rows) -0.781 -0.781 -0.781 -0.781 -0.781 ... 

9. mean_fast_fourier_transform_bodyaccjerk _minus_mean_freq_minus_x: 

  - fBodyAccJerk -meanFreq()-X 

  - num: (5 rows) -0.0477 -0.0477 -0.0477 -0.0477 -0.0477 ... 

10. mean_fast_fourier_transform_bodyaccjerk _minus_mean_freq_minus_y: 

  - fBodyAccJerk -meanFreq()-Y 

  - num: (5 rows) -0.213 -0.213 -0.213 -0.213 -0.213 ... 

11. mean_fast_fourier_transform_bodyaccjerk _minus_mean_freq_minus_z: 

  - fBodyAccJerk -meanFreq()-Z 

  - num: (5 rows) -0.124 -0.124 -0.124 -0.124 -0.124 ... 

  

MeanFourierTransformFMag.csv          180 obs. of 14 variables: 

  

1. subject : subject of an experiment: (int) 1 to 30. 

2. activity : (factor with 6 levels) &quot;laying,&quot; &quot;sitting,&quot; ...: 4 4 4 

3. mean_fast_fourier_transform_bodyaccmag_minus_mean: 

  - fBodyAccMag-mean(). 

  -f to indicate frequency domain signals. 

  - The Fourier transform ( FT ) decomposes a [function](https://en.wikipedia.org/wiki/Function_(mathematics)) of time (a _signal_) into the frequencies that make it up, in a way similar to how a musical [chord](https://en.wikipedia.org/wiki/Chord_(music)) can be expressed as the frequencies (or pitches) of its constituent notes. 

  - Here the fast fourier transform (FFT) was applied. 

  - Mag denotes magnitude. 

  - Also, the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) 

  - num  -0.586 -0.586 -0.586 -0.586 -0.586 ... 

4. mean_fast_fourier_transform_bodyaccmag_minus_std : 

  - Std denotes standard. 

  - fBodyAccMag-std(). 

  - data type num: (5 rows) -0.66 -0.66 -0.66 -0.66 -0.66 ... 

5. mean_fast_fourier_transform_bodyaccmag_minus_mean_freq : 

  - fBodyAccMag-meanFreq(). 

  - Maybe one term of Euclidean norm (magnitude/squared term). 

6. mean_fast_fourier_transform_bodybodyaccjerkmag_minus_mean : 

  - fBodyAccMag-meanFreq(). 

  - Maybe one term of Euclidean norm (magnitude/squared term). 

7. mean_fast_fourier_transform_bodybodyaccjerkmag_minus\_std : 

  - fBodyBodyAccJerkMag-std(). 

  - maybe one term of Euclidean norm (magnitude/squared term). 

  

8. mean_fast_fourier_transform_bodybodyaccjerkmag_minus_mean_freq : 

  - fBodyBodyAccJerkMag-meanFreq() 

  - maybe one term of Euclidean norm (magnitude/squared term). 

9. mean_fast_fourier_transform_bodybodygyromag_minus_mean: 

  - fBodyBodyGyroMag-mean(). 

  - maybe one term of Euclidean norm (magnitude/squared term). 

10. mean_fast_fourier_transform_bodybodygyromag_minus_std: 

  - fBodyBodyGyroMag-std(). 

  - maybe one term of Euclidean norm (magnitude/squared term). 

11. mean_fast_fourier_transform_bodybodygyromag_minus_mean_freq: 

  - fBodyBodyGyroMag-meanFreq(). 

12. mean_fast_fourier_transform_bodybodygyrojerkmag_minus_mean: 

  - fBodyBodyGyroJerkMag-mean(). 

13. mean_fast_fourier_transform_bodybodygyrojerkmag_minus_std: 

  - fBodyBodyGyroJerkMag-std(). 

14. mean_fast_fourier_transform_bodybodygyrojerkmag_minus_mean_freq: 

  - fBodyBodyGyroJerkMag-meanFreq(). 

  

Appendix One 

  

Raw data source 

  

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
