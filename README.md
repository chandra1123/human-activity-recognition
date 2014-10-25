human-activity-recognition
==========================

Getting and cleaning  data course project

This repository contains following files:

* CodeBook.md - code book that describes the variables, the data, and any transformations or work performed to clean up the raw data
* run_analysis.R  - R script used to run analysis for this project.


Explanation of run_analysis.R
=============================

The main work of gathering and cleaning data is done in function getTidyData, which contains a number of helper functions.

Example usage:

getTidyData("UCI HAR Dataset", "tidy_data.txt")

This reads raw data set from "UCI HAR Dataset" directory and writes the tidy data set into "tidy_data.txt" file. 

#Helper Functions
##readRawDataSet(set)
Reads one set of raw data set. 

* Reads subjects_set,x_set and y_set files for the set and combines them into one data set. 
* Returns this combined dataset.

##readRawData()
Returns the combined data set for "test" and "train"

* Reads each raw data set using readRawDataSet.
* Combines them into one data set. 

##descriptivevarname(name)
Generates descriptive and tidy variable names for the given variable name.  

* Removes duplicate words.
* Expands abbreviations.
* Removes non-word characters.

#Processing Logic
##getTidyData(dir, outfile)
Reads raw data from a directory (dir) and outputs tidy data set in the file (outfile).

1. Reads features.txt file into **features** dataset.
2. Creates derived variables ismean, isstd and descriptive varname in **features**
3. Creates a dataset **selectedfeatures** containing mean and std variable names.
4. Reads activities_labels.txt into **activities** data set.
5. Reads raw data set using helper function readRawData; replaces activity id with descriptive labels; removes measurements those in **selectedfeatures** and renames measurement variable names with descriptive names. This data set is **rawData**.
6. Takes **rawData**, groups by subject and activity and summarizes all measurments by taking mean. This data set is **tidyData**.
7. Writes tidyData into outfile using write.table.  This is the output of study.
