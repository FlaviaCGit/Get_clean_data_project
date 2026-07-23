# Get_clean_data_project
This repository contains all the requirements for the course on Coursera Getting and Cleaning Data

Getting and Cleaning Data Course Project
Overview

This repository contains the files required for the Coursera Getting and Cleaning Data course project.

The purpose of this project is to demonstrate the ability to collect, merge, clean, and transform data into a tidy data set suitable for later analysis.

Repository contents
run_analysis.R: R script that performs all the data cleaning and transformation steps required by the assignment.
tidy_data.txt: Final independent tidy data set containing the average of each selected variable for each activity and each subject.
CodeBook.md: Describes the variables, the transformations performed, and the resulting tidy data set.
README.md: Explains the purpose of the repository and how the analysis is performed.
Analysis performed

The script performs the following operations requested by assignement:

Reads the training and test datasets, with che correct labels.
Merges the training and test datasets into a single data set.
Assigns descriptive variable names, using the information provided in features.txt. The firs two columns are subject and activity, the left ones are the measurement names.
Extracts only the measurements corresponding to the mean and standard deviation.
Replaces numeric activity identifiers with descriptive activity names. So, I replace the activity number with the activity descriptive name.
Creates a second independent tidy data set containing the average of each variable for each activity and each subject.
Exports the final tidy data set as tidy_data.txt.

Source data

Human Activity Recognition Using Smartphones Dataset

https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
