## Code Book
===============================================================================

This file documents the variables in the tables generated by the 'run_analysis' R script. 
The aforementioned tables are found in the outputs 'summary_test.txt' and 'summary_train.txt'.



### Observation Variables
===============================================================================

1.  activity

    Description of the 6 different activities performed by each person in the 
    study (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
    
2.  subject_code

    A code number assigned to each person in the study (1 thru 30 for
    30 people in the study), where each person is assigned to either 
    the test group or train group.
    
3.  tm_body_acc_mean_x, tm_body_acc_mean_y, tm_body_acc_mean_z

    The mean for the observation of time doman signal captured body linear
    acceleration for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
4.  tm_body_acc_std_x, tm_body_acc_std_y, tm_body_acc_std_z

    The standard deviation for the observation of time doman signal captured 
    body linear acceleration for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
5.  tm_grav_acc_mean_x, tm_grav_acc_mean_y, tm_grav_acc_mean_z

    The mean for the observation of time doman signal captured gravity 
    acceleration for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
6.  tm_grav_acc_std_x, tm_grav_acc_std_y, tm_grav_acc_std_z

    The standard deviation for the observation of time doman signal 
    captured gravity acceleration for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
7.  tm_body_acc_jerk_mean_x, tm_body_acc_jerk_mean_y, tm_body_acc_jerk_mean_z

    The mean for the observation of body linear acceleration derived jerk signals 
    for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
8.  tm_body_acc_jerk_std_x, tm_body_acc_jerk_std_y, tm_body_acc_jerk_std_z

    The standard deviation for the observation of body linear acceleration derived 
    jerk signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
9.  tm_body_gyro_mean_x, tm_body_gyro_mean_y, tm_body_gyro_mean_z

    The mean for the observation of time domain signal captured body angular 
    velocity for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

10. tm_body_gyro_std_x, tm_body_gyro_std_y, tm_body_gyro_std_z

    The standard deviation for the observation of time domain signal captured 
    body angular velocity for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
11. tm_body_gyro_jerk_mean_x, tm_body_gyro_jerk_mean_y, tm_body_gyro_jerk_mean_z

    The mean for the observation of body angular velocity derived jerk signals 
    for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
12. tm_body_gyro_jerk_std_x, tm_body_gyro_jerk_std_y, tm_body_gyro_jerk_std_z

    The mean for the observation of body angular velocity derived jerk signals 
    for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
13. tm_body_acc_mag_mean

    The mean for the observation of body linear acceleration magnitude for
    each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

14. tm_body_acc_mag_std

    The standard deviation for the observation of body linear acceleration 
    magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

15. tm_grav_acc_mag_mean

    The mean for the observation of gravity acceleration magnitude for
    each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

16. tm_grav_acc_mag_std

    The standard deviation for the observation of body linear acceleration 
    magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

17. tm_body_acc_jerk_mag_mean

    The mean for the observation of body linear acceleration derived jerk 
    signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

18. tm_body_acc_jerk_mag_std

    The standard deviation for the observation of body linear acceleration 
    derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

19. tm_body_gyro_mag_mean

    The mean for the observation of body angular velocity magnitude 
    for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

20. tm_body_gyro_mag_std

    The standard deviation  for the observation of body angular velocity  
    magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

21. tm_body_gyro_jerk_mag_mean

    The mean for the observation of body angular velocity derived jerk
    signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

22. tm_body_gyro_jerk_mag_std

    The standard deviation for the observation of body angular velocity 
    derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

23. ff_body_acc_mean_x, ff_body_acc_mean_y, ff_body_acc_mean_z

    The mean for the observation of Fast Fourier Transformed body linear 
    acceleration signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

24. ff_body_acc_std_x, ff_body_acc_std_y, ff_body_acc_std_z

    The standard deviation for the observation of Fast Fourier Transformed 
    body linear acceleration signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

25. ff_body_acc_jerk_mean_x, ff_body_acc_jerk_mean_y, ff_body_acc_jerk_mean_z
    The mean for the observation of Fast Fourier Transformed body linear 
    acceleration derived jerk signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

26. ff_body_acc_jerk_std_x, ff_body_acc_jerk_std_y, ff_body_acc_jerk_std_z

    The standard deviation for the observation of Fast Fourier Transformed body linear 
    acceleration derived jerk signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

27. ff_body_gyro_mean_x, ff_body_gyro_mean_y, ff_body_gyro_mean_z

    The mean for the observation of Fast Fourier Transformed body angular 
    velocity derived jerk signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

28. ff_body_gyro_std_x, ff_body_gyro_std_y, ff_body_gyro_std_z

    The standard deviation for the observation of Fast Fourier Transformed body angular 
    acceleration derived jerk signals for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.

29. ff_body_acc_mag_mean

    The mean for the observation of Fast Fourier Transformed body linear 
    acceleration magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
30. ff_body_acc_mag_std

    The standard deviation for the observation of Fast Fourier Transformed body 
    linear acceleration magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
31. ff_body_acc_jerk_mag_mean
    The mean for the observation of Fast Fourier Transformed body linear acceleration 
    derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
32. ff_body_acc_jerk_mag_std

    The standard deviation for the observation of Fast Fourier Transformed body linear 
    acceleration derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
33. ff_body_gyro_mag_mean
    The mean for the observation of Fast Fourier Transformed body angular 
    velocity magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
34. ff_body_gyro_mag_std

    The standard deviation for the observation of Fast Fourier Transformed body 
    angular velocity magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
35. ff_body_gyro_jerk_mag_mean
    The mean for the observation of Fast Fourier Transformed body angular velocity 
    derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
35. ff_body_gyro_jerk_mag_std

    The standard deviation for the observation of Fast Fourier Transformed body angular 
    velocity derived jerk signal magnitude for each of the 3-axial signals (X, Y & Z).
    Observations have been summarised to obtain the mean observation 
    against activity and subject grouping.
    
    
    
### Variable Name Transformations
===============================================================================
All variable names were transformed to a different format (lower cases and using "_" to seperate text).
"tm" is used to define time domain signals and "ff" is used to define signals that that gone thorugh Fast Fourier Transformation.



### Value Variable Transformations
===============================================================================
All values have been summarized to obtain the individual mean for each variable, grouped at activity & subject level.



