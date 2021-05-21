%% Introduction to Engineering research
% David Stefan 4631706
% Project 3 - dataset

clear all
close all
clc

% Getting the data set from the CSV file
data = readtable('Data_IER.csv');

%% extracting the relevant data

%BMI data
BMI_2019 = data.bmi(1:93);                                  
BMI_2020 = data.bmi(95:193);                                
BMI_2019(ismember(BMI_2019,'NA')) = [];
BMI_2020(ismember(BMI_2020,'NA')) = [];
BMI_2019_num = cellfun(@str2num,BMI_2019);                  
BMI_2020_num = cellfun(@str2num,BMI_2020);
avg_BMI_2019 = mean(BMI_2019_num);                         
avg_BMI_2020 = mean(BMI_2020_num);
avg_BMI = [avg_BMI_2019 avg_BMI_2020]
std_BMI_2019 = std(BMI_2019_num)
std_BMI_2020 = std(BMI_2020_num)

% steps taken by all students in 2019 for day 1
sd1_2019 = data{1:94,43}; 
sd1_2019(ismember(sd1_2019,'NA')) = [];
sd1_2019_num = cellfun(@str2num,sd1_2019); 

% steps taken by all students in 2019 for day 2
sd2_2019 = data{1:94,47}; 
sd2_2019(ismember(sd2_2019,'NA')) = [];
sd2_2019_num = cellfun(@str2num,sd2_2019); 

% steps taken by all students in 2019 for day 3
sd3_2019 = data{1:94,51}; 
sd3_2019(ismember(sd3_2019,'NA')) = [];
sd3_2019_num = cellfun(@str2num,sd3_2019); 

% steps taken by all students in 2019 for day 4
sd4_2019 = data{1:94,55}; 
sd4_2019(ismember(sd4_2019,'NA')) = [];
sd4_2019_num = cellfun(@str2num,sd4_2019);

% steps taken by all students in 2019 for day 5
sd5_2019 = data{1:94,59}; 
sd5_2019(ismember(sd5_2019,'NA')) = [];
sd5_2019_num = cellfun(@str2num,sd5_2019); 

% steps taken by all students in 2019 for day 6
sd6_2019 = data{1:94,63}; 
sd6_2019(ismember(sd6_2019,'NA')) = [];
sd6_2019_num = cellfun(@str2num,sd6_2019);

% steps taken by all students in 2019 for day 7
sd7_2019 = data{1:94,67}; 
sd7_2019(ismember(sd7_2019,'NA')) = [];
sd7_2019_num = cellfun(@str2num,sd7_2019); 

% steps taken by all students in 2020 for day 1
sd1_2020 = data{95:193,43}; 
sd1_2020(ismember(sd1_2020,'NA')) = [];
sd1_2020_num = cellfun(@str2num,sd1_2020); 

% steps taken by all students in 2020 for day 2
sd2_2020 = data{95:193,47}; 
sd2_2020(ismember(sd2_2020,'NA')) = [];
sd2_2020_num = cellfun(@str2num,sd2_2020); 

% steps taken by all students in 2020 for day 3
sd3_2020 = data{95:193,51}; 
sd3_2020(ismember(sd3_2020,'NA')) = [];
sd3_2020_num = cellfun(@str2num,sd3_2020); 

% steps taken by all students in 2020 for day 4
sd4_2020 = data{95:193,55}; 
sd4_2020(ismember(sd4_2020,'NA')) = [];
sd4_2020_num = cellfun(@str2num,sd4_2020); 

% steps taken by all students in 2020 for day 5
sd5_2020 = data{95:193,59}; 
sd5_2020(ismember(sd5_2020,'NA')) = [];
sd5_2020_num = cellfun(@str2num,sd5_2020); 

% steps taken by all students in 2020 for day 6
sd6_2020 = data{95:193,63}; 
sd6_2020(ismember(sd6_2020,'NA')) = [];
sd6_2020_num = cellfun(@str2num,sd6_2020); 

% steps taken by all students in 2020 for day 7
sd7_2020 = data{95:193,67}; 
sd7_2020(ismember(sd7_2020,'NA')) = [];
sd7_2020_num = cellfun(@str2num,sd7_2020);

% averages of the steps taken
s_2019 = [sd1_2019_num; sd2_2019_num; sd3_2019_num; sd4_2019_num;
          sd5_2019_num; sd6_2019_num; sd7_2019_num];
s_2020 = [sd1_2020_num; sd2_2020_num; sd3_2020_num; sd4_2020_num;
          sd5_2020_num; sd6_2020_num; sd7_2020_num];
avg_steps_2019 = mean(s_2019);
avg_steps_2020 = mean(s_2020);
avg_steps = [avg_steps_2019 avg_steps_2020];
std_steps_2019 = std(s_2019);
std_steps_2020 = std(s_2020);

%% Results of the code
figure(1)
x_steps = 2019:1:2020;
bar(x_steps,avg_steps,'r')
hold on
xlabel('Year')
ylabel('Steps per day')
title('The average steps taken per day in 2019 and 2020')

figure(2)
bar(x_steps,avg_BMI)
hold on
xlabel('year')
ylabel('BMI (body mass index)')
title('The average BMI in the year 2019 and 2020')

