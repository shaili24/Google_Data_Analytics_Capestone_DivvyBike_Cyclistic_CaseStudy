# Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy

Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)

### Introduction

For this case study, I performed the real-world tasks of a junior data analyst conducting analysis for a fictional company, Cyclistic.

### About the Company

In 2016, Cyclistic launched a successful bike-sharing offering. The bikes can be unlocked from one station and returned to any other station in the system any-time.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual membership. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno(Director of Marketing and my manager) believes that maximizing the number of annual members will key to full growth. Rather than creating a marketing campaign that targets all-new customers, Moreno(director of marketing and your manager) believes there is a very good chance to convert casual riders into members.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect the marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

### Scenario 

I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore your team wants to understand how casual riders and annual members use Cyclistic bikes frequently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendation, so they must be backed up with compelling data insights and professional data visualizations.

---
### ASK 
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

--- 
### Prepare 

#### Data source: 
I have downloaded Cyclistic's historical trip data from Jan 2022 to Dec 2022 from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this [license](https://ride.divvybikes.com/data-license-agreement)

---
### Process

1. Firstly I downloaded the data and observed the data. It has 13 rows: which contain ride_id, bike_type, start_date, end_date, start_station, end_station, start station_longitude & latitude, end station_longitude & latitude and also member_type
2. I observe that there are too many missing values in the data: 
   
   <img width="1081" alt="missing_value" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/66faf2c1-4d7b-4bd0-97d8-1cd1e491085e">

**Data-Cleaning:** I used Excel to clean the missing values from the data. Used the *filter* function and deleted the columns which has missing values. 

**[Data-Combing:]([https://console.cloud.google.com/bigquery?sq=602252548088:1d143a74fa4b43f1835874e26ca015a7](https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/blob/main/combine_dataset.sql))** For further analysis I combine all the 12 data sets into 1 dataset using '*Big-Query*'
- I haven't used Excel to combine data as it only can have 1,048,576 rows but we have a total of 4,369,360 rows
  
  - <img width="184" alt="Screenshot 2023-09-11 at 10 05 31 AM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/2d3f86ce-76b0-4fd7-9cf2-2a12243150c7">

