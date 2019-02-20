#goal - merge the training set and the test test to create one data set, 
#i.e. append/row bind the training set and row set
#step 1 - open RStudio (Version 1.1.453) while using Windows 10 pro & while using R 3.4.4


#step 2 - in RStudio open session > set working directory > choose directory > choose: desktop

#step 2 - create directory if directory does not exist
if(!file.exists("../GetCleanData")){dir.create("GetCleanData")}

#step 3 - download zip file and place in directory GetCleanData
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="..//Desktop//GetCleanData//UciHarDataset.zip")

#step 4 - get the labels for test data set

y_test <- read.table("..//Desktop//GetCleanData//UCI HAR Dataset//test//y_test.txt", quote="\"", comment.char="")

#step 4 - get the X test data set
X_test <- read.table("../Desktop//GetCleanData//UCI HAR Dataset//test//X_test.txt", quote="\"", comment.char="", stringsAsFactors=FALSE)

#step 5 - get features, i.e. columns of X test data set

features <- read.table("../Desktop//GetCleanData//UCI HAR Dataset//features.txt", quote="\"", comment.char="")
NameFeatures<-features$V2

#step 6 - assign feature/column names to X test data set

names(X_test)<-NameFeatures

#step 7 - get the subject_test.txt (who performed the experiment for the test data set)

subject_test <- read.table("..//Desktop//GetCleanData//UCI HAR Dataset//test//subject_test.txt", quote="\"", comment.char="")

#step 8 - assign a corresponding subject row of X_Test dataframe to subject_test.txt
X_test$"subject"<-subject_test$V1

#step 9 - assign a corresponding label/observation row of X_Test data frame to labels (y_Test.txt)

X_test$"label"<-y_test$V1


#step 10 - get the X training data set
X_train <- read.table("../Desktop//GetCleanData//UCI HAR Dataset//train//X_train.txt", quote="\"", comment.char="", stringsAsFactors=FALSE)

#step 11 - get the labels of training data set (y_train.txt)
y_train<-read.table("..//Desktop//GetCleanData//UCI HAR Dataset//train//y_train.txt", quote="\"", comment.char="")

#step 12 - get the subject_test.txt

subject_train <- read.table("..//Desktop//GetCleanData//UCI HAR Dataset//train//subject_train.txt", quote="\"", comment.char="")

#step 13 - assign feature/column names to X train data set

names(X_train)<-NameFeatures

#step 14 - assign a corresponding subject/observation row of X_Train dataframe to subject_train.txt
X_train$"subject"<-subject_train$V1

#step 15 - assign a corresponding/observation row of X_Train data frame to labels (y_Train.txt)

X_train$"label"<-y_train$V1


#step 16 - append the X_train data frame and X_test data frame
XTotalData<-rbind(X_test, X_train)

#goal - extract only measurements on the mean and standard deviation for each measurment

#step 17 - get column names that have mean or std in them
#std corresponds to standard deviation
#"[mM]mean" means grap column/features with mean or Mean in them
#"[Ss]td" means grap column/features with std or Std in them.
#"[mM]mean|[sS]td" means grap column/features with mean, Mean, std, or Std in them.
MeanStdColNames<-grep("([mM]ean|[Ss]td)", features$V2)

#step 18 - select only columns/features of XTotalData data frame that relate to mean and std, and the label and subject columns
#column 562 & 563 are column label & subject, respectively.
XMeanStd<-XTotalData[, c(MeanStdColNames, 562, 563)]

#goal - use descriptive activity names to name the activities in the dataset

#step 19 - get the activity names/labels

activityLabels <- read.table("../Desktop/GetCleanData/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")

#step 20 - merge on "label" column of XmeanStd data frame and "V1" of activityLables data frame

MergedXMeanStd<-merge(XMeanStd, activityLabels, by.x = "label", by.y = "V1")

#goal - Appropriately labels the data set with descriptive variable names.
#step 23 - rename V2 to activity
library(dplyr)
MergedXMeanStd<- rename(MergedXMeanStd, activity=V2)

#step 24 - remove unneccessary columns
MergedXMeanStd<-select(MergedXMeanStd, 2:89)

#goal - create independent tidy data set with the average of each variable for each activity and each subject
#create a file for each type measurement, so the dataset is not so big

#step 25 - put the data frame MergedXMeanStd into a data.table
library(data.table)
MergedXMeanStdTable<-data.table(MergedXMeanStd)

#step 26 - assign a data table for the measurement tbodyAcc (body acceleration signal)
#prefix t denotes time
#acc denotes sensor signal accelerometer
#gyro denotes sensor signal gyroscope.
#the senor signal has body motion components. Body denotes the body motion component.
tBody<-select(MergedXMeanStdTable, 1:6,19:24 ,87:88)

#step 27 - assign a data table for the measurement tGravityAccs (gravity acceleration signal)
#Gravity denotes the gravity component of accelerometer signal
tGravityAcc<-select(MergedXMeanStdTable, 7:12, 87:88)

#step 28 - assign a data table for the measurement tBodyAccJerk 
#Body linear and angular velocity signals were combined.  this is called jerk signals
tBodyJerk<-select(MergedXMeanStdTable, 13:18, 25:30, 87:88)

#step 29 - assign a data table for the measurement mag
tMag<-select(MergedXMeanStdTable, 31:40, 87:88)

#step 30 - assign a data table for the measurement fbody
#f indicates frequency domain signals. 
#fast fourier transform was applied to some signals producing fBodyAcc-XYZ, fBodyGyro-XYZ, 
#fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag
fbody<-select(MergedXMeanStdTable, 41:49, 59:67, 87:88)

#step 31 -assign a data table for the measurement fbodyAccJerk
fbodyAccJerk<-select(MergedXMeanStdTable, 50:58, 87:88)

#step 32 - assign a data table for the measurement f transform mag
fmag<-select(MergedXMeanStdTable, 68:79, 87:88)

#step 33 - assign a data table for the measurement angular velocity
angle<-select(MergedXMeanStdTable, 80:88)

#step 34 - find the mean of each column of the data table "angle", grouped by subject and activity
MeanAngle<-angle[, list(mean(angle$`angle(tBodyAccMean,gravity)`), mean(angle$`angle(tBodyAccJerkMean),gravityMean)`), 
                        mean(angle$`angle(tBodyGyroMean,gravityMean)`), mean(angle$`angle(tBodyGyroJerkMean,gravityMean)`),
                        mean(`angle(X,gravityMean)`), mean(`angle(Y,gravityMean)`), mean(angle$`angle(Z,gravityMean)`)),
                 by=c("subject", "activity")]
#step 35 - rename columns of "MeanAngle," to give more meaningful names
MeanAngle<-rename(MeanAngle, anglemeantbodyaccgravity=V1, anglemeantbodyaccjerkgravity=V2, 
                  anglemeantbodygyrogravity=V3, anglemeantbodygyrojerkgravity=V4, anglemeanxgravity =V5,  
                  anglemeanygravity =V6, anglemeanzgravity =V7)

#step 36 - create directory if directory does not exist
if(!file.exists("../GetCleanData/Tidy")){dir.create("GetCleanData/Tidy")}

#step 37 - write MeanAngle data frame to csv file called MeanAngle.csv

write.csv(MeanAngle,file = "../desktop/GetCleanData/Tidy/MeanAngle.csv")

##to read tidy data MeanAngle.csv use:
#   ReadMeanAngle <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanAngle.csv")

#step 38 - find the mean of each column of the data table "tbody", grouped by subject and activity
MeanTBody<-tBody[, list(mean(tBody$`tBodyAcc-mean()-X`), mean(tBody$`tBodyAcc-mean()-Y`),
                        mean(tBody$`tBodyAcc-mean()-Z`), mean(tBody$`tBodyAcc-std()-X`),
                        mean(tBody$`tBodyAcc-std()-Y`), mean(tBody$`tBodyAcc-std()-Z`),
                        mean(tBody$`tBodyGyro-mean()-X`), mean(tBody$`tBodyGyro-mean()-Y`),
                        mean(`tBodyGyro-mean()-Z`), mean(tBody$`tBodyGyro-std()-X`),
                        mean(tBody$`tBodyGyro-std()-Y`), mean(tBody$`tBodyGyro-std()-Z`)
                        ),
                 by=c("subject", "activity")]
#step 39 - rename columns of MeanTBody data table to meaningful names.
MeanTBody<-rename(MeanTBody, mean_tbodyacc_minus_mean_minus_x=V1, mean_tbodyacc_minus_mean_minus_y=V2, mean_tbodyacc_minus_mean_minus_z=V3,
                  mean_tbodyacc_minus_std_minus_x=V4, mean_tbodyacc_minus_std_minus_y=V5, mean_tbodyacc_minus_std_minus_z=V6,
                  mean_tbodygyro_minus_mean_minus_x=V7, mean_tbodygyro_minus_mean_minus_y=V8, mean_tbodygyro_minus_mean_minus_z=V9,
                  mean_tbodygyro_minus_std_minus_x=V10, mean_tbodygyro_minus_std_minus_y=V11, mean_tbodygyro_minus_std_minus_z=V12
                  )

#step 40 - write MeantBody.csv
write.csv(MeanTBody,file = "../desktop/GetCleanData/Tidy/MeantBody.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanTBody <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeantBody.csv")

#step 41 - find the mean of each column of the data table "tGravity", grouped by subject and activity
MeantGravity<-tGravityAcc[, list(mean(tGravityAcc$`tGravityAcc-mean()-X`), mean(tGravityAcc$`tGravityAcc-mean()-Y`),
                                 mean(tGravityAcc$`tGravityAcc-mean()-Z`), mean(tGravityAcc$`tGravityAcc-std()-X`),
                                 mean(tGravityAcc$`tGravityAcc-std()-Y`), mean(tGravityAcc$`tGravityAcc-std()-Z`)
),
by=c("subject", "activity")]

#step 41 - rename columns of MeantGravity data table to meaningful names.
MeantGravity<-rename(MeantGravity, mean_tgravityacc_minus_mean_minus_x=V1, mean_tgravityacc_minus_mean_minus_y=V2, mean_tgravityacc_minus_mean_minus_z=V3,
                  mean_tgravityacc_minus_std_minus_x=V4, mean_tgravityacc_minus_std_minus_y=V5, mean_tgravityacc_minus_std_minus_z=V6
)

#step 42 - write MeanTGravity.csv
write.csv(MeantGravity,file = "../desktop/GetCleanData/Tidy/MeanTGravity.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanTGravity <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanTGravity.csv")


#step 43 - find the mean of each column of the data table "tBodyJerk", grouped by subject and activity
MeanTBodyJerk<-tBodyJerk[, list(mean(tBodyJerk$`tBodyAccJerk-mean()-X`), mean(tBodyJerk$`tBodyAccJerk-mean()-Y`),
                        mean(tBodyJerk$`tBodyAccJerk-mean()-Z`), mean(tBodyJerk$`tBodyAccJerk-std()-X`),
                        mean(tBodyJerk$`tBodyAccJerk-std()-Y`), mean(tBodyJerk$`tBodyAccJerk-std()-Z`),
                        mean(tBodyJerk$`tBodyGyroJerk-mean()-X`), mean(tBodyJerk$`tBodyGyroJerk-mean()-Y`),
                        mean(tBodyJerk$`tBodyGyroJerk-mean()-Z`), mean(tBodyJerk$`tBodyGyroJerk-std()-X`),
                        mean(tBodyJerk$`tBodyGyroJerk-std()-Y`), mean(tBodyJerk$`tBodyGyroJerk-std()-Z`)
),
by=c("subject", "activity")]

#step 44 - rename columns of MeanTBodyJerk data table to meaningful names.
MeanTBodyJerk<-rename(MeanTBodyJerk, mean_tbodyaccjerk_minus_mean_minus_x=V1, mean_tbodyaccjerk_minus_mean_minus_y=V2, mean_tbodyaccjerk_minus_mean_minus_z=V3,
                  mean_tbodyaccjerk_minus_std_minus_x=V4, mean_tbodyaccjerk_minus_std_minus_y=V5, mean_tbodyaccjerk_minus_std_minus_z=V6,
                  mean_tbodygyrojerk_minus_mean_minus_x=V7, mean_tbodygyrojerk_minus_mean_minus_y=V8, mean_tbodygyrojerk_minus_mean_minus_z=V9,
                  mean_tbodygyrojerk_minus_std_minus_x=V10, mean_tbodygyrojerk_minus_std_minus_y=V11, mean_tbodygyrojerk_minus_std_minus_z=V12
)

#step 45 - write MeanTBodyJerk.csv
write.csv(MeanTBodyJerk,file = "../desktop/GetCleanData/Tidy/MeanTBodyJerk.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanTBodyJerk <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanTBodyJerk.csv")

#step 46 - find the mean of each column of the data table "tMag", grouped by subject and activity
MeanTMag<-tMag[, list(mean(tMag$`tBodyAccMag-mean()`), mean(tMag$`tBodyAccMag-std()`),
                                mean(tMag$`tGravityAccMag-mean()`), mean(tMag$`tGravityAccMag-std()`),
                                mean(tMag$`tBodyAccJerkMag-mean()`), mean(tMag$`tBodyAccJerkMag-std()`),
                                mean(tMag$`tBodyGyroMag-mean()`), mean(tMag$`tBodyGyroMag-std()`),
                                mean(tMag$`tBodyGyroJerkMag-mean()`), mean(tMag$`tBodyGyroJerkMag-std()`)
),
by=c("subject", "activity")]

#step 47 - rename columns of MeanTMag data table to meaningful names.
MeanTMag<-rename(MeanTMag, mean_tbodyaccmag_minus_mean=V1, mean_tbodyaccmag_minus_std=V2, mean_tgravityaccmag_minus_mean=V3,
                      mean_tgravityaccmag_minus_std=V4, mean_tbodyaccjerkmag_minus_mean=V5, mean_tbodyjerkmag_minus_std=V6,
                      mean_tbodygyromag_minus_mean=V7, mean_tbodygyromag_minus_std=V8, mean_tbodygyrojerkmag_minus_mean=V9,
                      mean_tbodygyrojerkmag_minus_std=V10
)
#step 48 - write MeanTMag.csv
write.csv(MeanTMag,file = "../desktop/GetCleanData/Tidy/MeanTMag.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanTMag <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanTMag.csv")

#step 49 - find the mean of each each column of the data table "fBody", grouped by subject and activity.
MeanFBody<-fbody[, list(mean(fbody$`fBodyAcc-mean()-X`), mean(fbody$`fBodyAcc-mean()-Y`),
                      mean(fbody$`fBodyAcc-mean()-Z`), mean(fbody$`fBodyAcc-std()-X`),
                      mean(fbody$`fBodyAcc-std()-Y`), mean(fbody$`fBodyAcc-std()-Z`),
                      mean(fbody$`fBodyAcc-meanFreq()-X`), mean(`fBodyAcc-meanFreq()-Y`),
                      mean(fbody$`fBodyAcc-meanFreq()-Z`), mean(fbody$`fBodyGyro-mean()-X`),
                      mean(fbody$`fBodyGyro-mean()-Y`), mean(`fBodyGyro-mean()-Z`),
                      mean(fbody$`fBodyGyro-std()-X`), mean(fbody$`fBodyGyro-std()-Y`), mean(fbody$`fBodyGyro-std()-Z`),
                      mean(fbody$`fBodyGyro-meanFreq()-X`), mean(fbody$`fBodyGyro-meanFreq()-Y`),
                      mean(fbody$`fBodyGyro-meanFreq()-Z`)
),
by=c("subject", "activity")]

#step 50 - rename columns of MeanTMag data table to meaningful names.
MeanFBody<-rename(MeanFBody, mean_fast_fourier_transform_bodyacc_minus_mean_minus_x=V1, mean_fast_fourier_transform_bodyacc_minus_mean_minus_y=V2, mean_fast_fourier_transform_bodyacc_minus_mean_minus_z=V3,
                 mean_fast_fourier_transform_bodyacc_minus_std_minus_x=V4, mean_fast_fourier_transform_bodyacc_minus_std_minus_y=V5, mean_fast_fourier_transform_bodyacc_minus_std_minus_z=V6,
                 mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_x=V7, mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_y=V8, mean_fast_fourier_transform_bodyacc_minus_mean_freq_minus_z=V9,
                 mean_fast_fourier_transform_bodygyro_minus_mean_minus_x=V10,mean_fast_fourier_transform_bodygyro_minus_mean_minus_y=V11,mean_fast_fourier_transform_bodygyro_minus_mean_minus_z=V12,
                 mean_fast_fourier_transform_bodygyro_minus_std_minus_x=V13,mean_fast_fourier_transform_bodygyro_minus_std_minus_y=V14,mean_fast_fourier_transform_bodygyro_minus_std_minus_z=V15,
                 mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_x=V16,mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_y=V17,mean_fast_fourier_transform_bodygyro_minus_mean_freq_minus_z=V18
)



#step 51 - write MeanFourierTransformBody.csv
write.csv(MeanFBody,file = "../desktop/GetCleanData/Tidy/MeanFourierTransformBody.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanFourierBody <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanFourierTransformBody.csv") 

#or w

#step 52 - find the mean of each each column of the data table "fBodyAccJerk", grouped by subject and activity.
MeanFBodyAccJerk<-fbodyAccJerk[, list(mean(fbodyAccJerk$`fBodyAccJerk-mean()-X`), mean(fbodyAccJerk$`fBodyAccJerk-mean()-Y`),
                        mean(fbodyAccJerk$`fBodyAccJerk-mean()-Z`), mean(fbodyAccJerk$`fBodyAccJerk-std()-X`),
                        mean(fbodyAccJerk$`fBodyAccJerk-std()-Y`), mean(fbodyAccJerk$`fBodyAccJerk-std()-Z`),
                        mean(fbodyAccJerk$`fBodyAccJerk-meanFreq()-X`), mean(fbodyAccJerk$`fBodyAccJerk-meanFreq()-Y`),
                        mean(fbodyAccJerk$`fBodyAccJerk-meanFreq()-Z`)
),
by=c("subject", "activity")]

#step 53 - rename columns of MeanFBodyAccJerk data table to meaningful names.
MeanFBodyAccJerk<-rename(MeanFBodyAccJerk, mean_fast_fourier_transform_bodyaccjerk_minus_mean_minus_x=V1, mean_fast_fourier_transform_bodyaccjerk_minus_mean_minus_y=V2, mean_fast_fourier_transform_bodyaccjerk_minus_mean_minus_z=V3,
                  mean_fast_fourier_transform_bodyaccjerk_minus_std_minus_x=V4, mean_fast_fourier_transform_bodyaccjerk_minus_std_minus_y=V5, mean_fast_fourier_transform_bodyaccjerk_minus_std_minus_z=V6,
                  mean_fast_fourier_transform_bodyaccjerk_minus_mean_freq_minus_x=V7, mean_fast_fourier_transform_bodyaccjerk_minus_mean_freq_minus_y=V8, mean_fast_fourier_transform_bodyaccjerk_minus_mean_freq_minus_z=V9
)

#step 54 - write MeanFourierTransformBodyAccJerk.csv
write.csv(MeanFBodyAccJerk,file = "../desktop/GetCleanData/Tidy/MeanFourierTransformBodyAccJerk.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanFourierBody <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanFourierTransformBodyAccJerk.csv")

#step 55 - find the mean of each each column of the data table "fMag", grouped by subject and activity.
MeanFMag<-fmag[, list(mean(fmag$`fBodyAccMag-mean()`), mean(fmag$`fBodyAccMag-std()`),mean(fmag$`fBodyAccMag-meanFreq()`), 
                      mean(fmag$`fBodyBodyAccJerkMag-mean()`),mean(fmag$`fBodyBodyAccJerkMag-std()`), mean(fmag$`fBodyBodyAccJerkMag-meanFreq()`),
                        mean(fmag$`fBodyBodyGyroMag-mean()`), mean(fmag$`fBodyBodyGyroMag-std()`),mean(fmag$`fBodyBodyGyroMag-meanFreq()`),
                      mean(fmag$`fBodyBodyGyroJerkMag-mean()`), mean(fmag$`fBodyBodyGyroJerkMag-std()`), mean(fmag$`fBodyBodyGyroJerkMag-meanFreq()`)
),
by=c("subject", "activity")]

#step 56 - rename columns of MeanFMag data table to meaningful names.
MeanFMag<-rename(MeanFMag, mean_fast_fourier_transform_bodyaccmag_minus_mean=V1, mean_fast_fourier_transform_bodyaccmag_minus_std=V2,mean_fast_fourier_transform_bodyaccmag_minus_mean_freq=V3,
                 mean_fast_fourier_transform_bodybodyaccjerkmag_minus_mean=V4, mean_fast_fourier_transform_bodybodyaccjerkmag_minus_std=V5, mean_fast_fourier_transform_bodybodyaccjerkmag_minus_mean_freq=V6, 
                         mean_fast_fourier_transform_bodybodygyromag_minus_mean=V7, mean_fast_fourier_transform_bodybodygyromag_minus_std=V8, mean_fast_fourier_transform_bodybodygyromag_minus_mean_freq=V9,
                         mean_fast_fourier_transform_bodybodygyrojerkmag_minus_mean=V10,mean_fast_fourier_transform_bodybodygyrojerkmag_minus_std=V11, mean_fast_fourier_transform_bodybodygyrojerkmag_minus_mean_freq=V12
)

#step 57 - write MeanFourierTransformFMag.csv
write.csv(MeanFMag,file = "../desktop/GetCleanData/Tidy/MeanFourierTransformFMag.csv")
##to read tidy data MeantBody.csv use:
#   ReadMeanFourierBody <- read.csv("C:/Users/Elias/Desktop/GetCleanData/Tidy/MeanFourierTransformFMag.csv")