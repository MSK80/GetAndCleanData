#Code Book
##Description of Variables
All variables in data are listed below:
 [1] "activities"                      "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [4] "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
 [7] "tGravityAcc-mean()-Z"            "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[10] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
[13] "tBodyGyro-mean()-Z"              "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[16] "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"              "tGravityAccMag-mean()"          
[19] "tBodyAccJerkMag-mean()"          "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[22] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
[25] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[28] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[31] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[34] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
[37] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[40] "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"     
[43] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[46] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()" "tBodyAcc-std()-X"               
[49] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
[52] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-std()-X"           
[55] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[58] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-std()-X"          
[61] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
[64] "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"           "tBodyGyroMag-std()"             
[67] "tBodyGyroJerkMag-std()"          "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[70] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[73] "fBodyAccJerk-std()-Z"            "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[76] "fBodyGyro-std()-Z"               "fBodyAccMag-std()"               "fBodyBodyAccJerkMag-std()"      
[79] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroJerkMag-std()" 

These variables ere obtained from signalls:
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
and were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

##Description of data
Data contains 10299 measurements of sensor signals obtained from:
Human Activity Recognition Using Smartphones Dataset
Version 1.0

The initial data set was rearranged to reduce amount of columns to those describing mean and standard deviation.
