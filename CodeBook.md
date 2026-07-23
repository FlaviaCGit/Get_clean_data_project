Code Book
Original Data

The data come from the Human Activity Recognition Using Smartphones Dataset.

The original data were collected from 30 volunteers performing six different physical activities while wearing a Samsung Galaxy S II smartphone equipped with an accelerometer and gyroscope.

Variables

Subject: Identifier of the volunteer (1–30).

Activity: Name of the activity performed.
Activity names: WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING

Measurement variables: The remaining variables are the measurements corresponding only to the mean (mean()) and standard deviation (std()) of the original feature vector.
Examples include:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-std()-X
fBodyAcc-mean()-X
fBodyAcc-std()-X

Transformations performed

The following processing steps were applied:

Read the training and test datasets.
Merged the training and test datasets into one complete dataset.
Assigned descriptive variable names using features.txt.
Extracted only the variables containing mean() or std().
Replaced numeric activity labels with descriptive activity names using activity_labels.txt.
Created a second independent tidy data set by calculating the average of each measurement for every combination of subject and activity.
Final tidy data

The final tidy data set contains:

180 observations (30 subjects × 6 activities)
68 variables:
Subject
Activity
66 averaged measurement variables
