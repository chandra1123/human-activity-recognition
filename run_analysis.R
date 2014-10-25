#
# Collects raw data, combines them and cleans up to get a tidy data set for further analysis.
#

library(dplyr)
library(stringr)

# Collect raw data from a directory and write tidied data to outfile.
getTidyData <- function(dir, outfile) {
  # Reads one set of dataset.
  readRawDataSet <- function(set) {
    subjects <- read.table(paste0(dir, "/",set,"/subject_",set, ".txt"), col.names="subject")
    measures <- read.table(paste0(dir, "/",set,"/x_",set, ".txt"), col.names=features$varid)
    activities <- read.table(paste0(dir, "/",set,"/y_",set, ".txt"), col.names="activity")
    dataset <- cbind(subjects, activities, measures)
  }

  # Reads raw data from directory.
  readRawData <- function() {
    testDataSet <- readRawDataSet("test")
    trainingDataSet <- readRawDataSet("train")
    rawdataset <- rbind_list(testDataSet,trainingDataSet)  
  }

  # Tidies up variable name.
  descriptivevarname <- function(name) {
    name1 <- gsub("([A-Z][a-z]+)(\\1)","\\1",name)
    name1 <- gsub("^f","FrequencyDomainSignal",name1)
    name1 <- gsub("^t","TimeDomainSignal",name1)
    name1 <- gsub("Acc","Acceleration",name1)
    name1 <- gsub("Mag","Magnitude",name1)
    name1 <- gsub("\\W","",name1)
  }

  # Read features 
  features <- read.table(paste0(dir,"//features.txt"), col.names=c("id", "name")) %>%
    mutate(descriptivevarname = descriptivevarname(name),
           varid=paste0("V",id),
           ismean=grepl("mean\\(\\)",name),
           isstd=grepl("std\\(\\)",name))
  
  # Identify features to be kept.
  selectedfeatures <- features %>% filter((ismean | isstd))
  
  # Read activities.
  activities <- read.table(paste0(dir,"//activity_labels.txt"), col.names=c("activity", "activitylabel"))
  
  # Read  raw data, replace activity with descriptive label, remove unneccessary vars.
  rawData <- readRawData() %>% 
    left_join(activities) %>%
    mutate(activity=activitylabel) %>%
    select(one_of(c("subject", "activity", selectedfeatures$varid))) 
  
  # Replace variable names with descriptive variable names.           
  names(rawData) <- c("subject", "activity", selectedfeatures$descriptivevarname)
  
  # Tidy up the data for analysis by grouping and summarizing.
  tidyData <- rawData %>% 
    group_by(subject,activity) %>% 
    summarise_each(funs(mean))
  
  # Write out tidy data to a file.
  write.table(tidyData,outfile, row.names=FALSE )
}

getTidyData("UCI HAR Dataset", "tidy_data.txt")
