# Variables in the final data set

* Subject 
 
a bit more human readable than just the integer those participants were coded in the original data set

* Activity

high-level categorization of the subject's physical activity. allowed values: 
WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING

* Measurements

Measures are derived from the original data set (see ReadMe.md). They are, per original description:<br>
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 tBodyAcc-XYZ<br>
 tGravityAcc-XYZ<br>
 tBodyAccJerk-XYZ<br>
 tBodyGyro-XYZ<br>
 tBodyGyroJerk-XYZ<br>
 tBodyAccMag<br>
 tGravityAccMag<br>
 tBodyAccJerkMag<br>
 tBodyGyroMag<br>
 tBodyGyroJerkMag<br>
 fBodyAcc-XYZ<br>
 fBodyAccJerk-XYZ<br>
 fBodyGyro-XYZ<br>
 fBodyAccMag<br>
 fBodyAccJerkMag
 fBodyGyroMag
 fBodyGyroJerkMag

various aggregate functins are performed on the above variables that denoted by function name in the original dataset's code book.

within the scope of this assignement additional calculation of mean values (per person and activity) was performed. Since the calculation was 'uniformed' it does not seem to add much value to add 'Average of _variable name_ by subject/activity, so manes are just left teh same as in the original data source. all original variables are normalized to (-1, 1) interval   
