##Read Me


### Result Data Tables
===============================================================================

The summary results data tables can be found in the following files:

- 'test_summary.txt' : Summary of test set data
- 'train_summary.txt' : Summary of training set data
 
 

### R Script Logic
===============================================================================

1.  Retrieving data from the following data sets files:
      - 'activity_labels.txt' : description labels of the different activities
      - 'features.txt'        : the variable names for each measurement in test observation
      - 'subject_test.txt'    : numeric code for subject in each test observation
      - 'y_test.txt'          : numeric code for activity in each test observation
      - 'x_test.txt'          : values of measurements in test observations 
      - 'subject_train.txt'   : numeric code for subject in each training observation
      - 'y_train.txt'         : numeric code for activity in each training observation
      - 'x_train.txt'         : values of measurements in training observations 
      
2A. Joining subject observations table, activity observation table and measurement observation 
    table to form a single data table.
    Process repeated for both test and training data. Observations are assigned into the 
    following data frames:
      - data.test
      - data.train
2B. Joining data.test and data.train to form 1 data table containing all test & training observations. 
    Combined oversavations are assigned into the following data frame:
      - data
      
3.  Obtaining column numbers for mean and standard deviation measurements only.
    Column numbers are assigned into:
      - data.cols
    Using data.cols, data is then rebuilt to only contain mean and 
    standard deviation measurements along with the row headings activity_code and subject_code.
    
4.  Variable names for mean and standard deviation measurements are transformed into readable names.
    The function clean_var_name() is called and the result is returned to data.cols.name.
    The function processes a least of text substitutions using a list of patterns to transform 
    the variable names.
      - gsub() is used in to process. This R script substitutes the given pattern found in the 
        text with a given replacement string.
        
5.  Retrieving activity description into data.test and data.train tables
    Using data is merged with label.y (activity description table obtained from 
    'activity_labels.txt') and linked by the activity_code to obtain the activity_description.
    Merged table is returned to the data frame data.
    
6.  Transformed variable names obtained in step 4 are assigned to the names of data.

7.  data is summarized to obtain the measurements' (means and standard deviations)
    average observations and grouped at activity and subject_code level.
    Summarized data is returned to summary.
    
8.  summary are output to text files in the working directory.
      - 'summary.txt
      
