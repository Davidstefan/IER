Fitbit data set - Data Analysis

This README file is done for a project in which a large dataset was used to perform statistical analysis. Within the dataset, the columns BMI and
Steps were used to gather information about the demographics of people in 2019 and 2020. Some mean values and charts give insight to the impact
of lockdown measures (entitled in 2020) on the physicical activity of students and their BMI.

Dataset == Data_IER.csv: Contains the dataset with the data from the IPAQ and the OMRON activity tracker

Script == data_processing.m: Contains the Matlab file which is used to perform statistical analysis on the dataset

Method: 

The main functions of the script are:
     
     -Determining the mean value of the BMI for both 2019 and 2020
     -Determining the mean value of the amount of steps taken per day for both 2019 and 2020
     -Filtering out the irrelevant records (i.e. 'NA' records)
     -Plot the values in an clear chart
From the questionnaire and the activity tracker, a large CSV table was obtained, containing all the data from the students. 
To get the desired results from this CSV file, multiple Matlab commands are used, which can be found in the final script. 

Data specific information:
"Only used and relevent data is described here, for a full overview of the dataset in general, please contact l.hoogendam@erasmusmc.nl.
Data set was not made in the project, it was only used for statistical analysis, therefore no in depth information concerning the dataset and 
its individual entities"

     -BMI = Body mass index [NA]
     -avg = average [NA]
     -std = standard deviation [NA]
     -sdi = steps taken by all students on day i [#]
     -num = numerical value (done to convert the cell values to numerical values)
     -s = average of steps taken [steps]
For columns name entities in the Data_IER.csv file, please refer to l.hoogendam@erasmusmc.nl

Within the data_processing.m file, annotations have been made to guide the user through the script.

Done using Matlab 2019 - student edition

Installation instructions: for installation of Matlab 2019, please refer to mathworks.com. To run the script please put the script
and the dataset in a folder, open them both in Matlab and run the script. Doing this will give the results as listed in the associated report.
If any functions are unclear, please contact d.a.stefan@student.tudelft.nl

To install Matlab, please refer to the following link: https://nl.mathworks.com/help/install/ 

Author: David Stefan

Project: Introduction to Engineering research

Date: 21-5-2021
