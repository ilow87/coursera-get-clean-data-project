run_analysis <- function(){
  
  data.fldr <- "data/UCI HAR Dataset/"
  
  ## Retrieving data labels for X & Y axes
  label.y <- read.table(paste(data.fldr, "activity_labels.txt", sep=""), col.names = c("activity_code", "Activity"))
  label.x <- read.table(paste(data.fldr, "features.txt", sep=""))
  
  ## Retrieving data test observations for X & Y axes
  data.test.subj <- read.table(paste(data.fldr, "test/subject_test.txt", sep=""), col.names="subject_code")
  data.test.y <- read.table(paste(data.fldr, "test/y_test.txt", sep = ""), col.names="activity_code")
  data.test.x <- read.table(paste(data.fldr, "test/x_test.txt", sep=""))

  ## Retrieving data train observations for X & Y axes
  data.train.subj <- read.table(paste(data.fldr, "train/subject_train.txt", sep=""), col.names = "subject_code")
  data.train.y <- read.table(paste(data.fldr, "train/y_train.txt", sep=""), col.names="activity_code")
  data.train.x <- read.table(paste(data.fldr, "train/x_train.txt", sep=""))
  
  
  ## Joining X & Y data test observations to form 1 data table
  data.test <- cbind(data.test.y, data.test.subj, data.test.x)
  
  ## Joining X & Y data train observations to form 1 data table
  data.train <- cbind(data.train.y, data.train.subj, data.train.x)
  
  
  ## Obtaining columns with mean & standard deviation variables only.
  data.cols <- sort(c(grep("mean()", label.x[,2], fixed=TRUE), grep("std()", label.x[,2], fixed=TRUE)), decreasing=FALSE)
  data.test <- data.test[, c(1, 2, data.cols+2)]
  data.train <- data.train[, c(1,2, data.cols+2)]
  
  ## cleaning up variable names
  ## variable names are in lower case and seperate by "_" to allow for easy viewing
  data.cols.name <- clean_var_name(label.x[data.cols, 2])

  
  ## merging test & train data tables with activity labels table to retrieve activity description
  data.test <- merge(label.y, data.test, by="activity_code")
  data.train <- merge(label.y, data.train, by="activity_code")
  
  
  ## applying cleaned variable names to data tables
  names(data.test) <- c("activity_code", "activity", "subject_code", data.cols.name)
  names(data.train) <- c("activity_code", "activity", "subject_code", data.cols.name)
  
  
  library(dplyr)
  
  ## summarising test table to show the mean of all variables grouped against activity & subject_code
  summary.test <- data.test %>% 
                  select(-activity_code) %>% 
                  group_by(activity, subject_code) %>% 
                  summarise_each(funs(mean))
  
  ## summarising train table to show the mean of all variables grouped against activity & subject_code
  summary.train <-  data.train %>% 
                    select(-activity_code) %>% 
                    group_by(activity, subject_code) %>% 
                    summarise_each(funs(mean))
  
  ## writing tables to a txt file in working directory
  write.table(summary.test, "test_summary.txt", row.names = FALSE)
  write.table(summary.train, "train_summary.txt", row.names = FALSE)
}

clean_var_name <- function(data.cols.name) {
  
  data.cols.name <- gsub("tBody", "tm_body", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("tGravity", "tm_grav", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("fBodyBody", "ff_body", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("fBody", "ff_body", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Acc", "_acc", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Gyro", "_gyro", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Jerk", "_jerk", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Mag", "_mag", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("X", "x", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Y", "y", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("Z", "z", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("-", "_", data.cols.name, fixed=TRUE)
  data.cols.name <- gsub("()", "", data.cols.name, fixed=TRUE)
  
  return(data.cols.name)
  
}

