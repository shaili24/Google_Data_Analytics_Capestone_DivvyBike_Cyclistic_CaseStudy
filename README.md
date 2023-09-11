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

**[Data-Combing:](https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/blob/main/combine_dataset.sql)** For further analysis I combine all the 12 data sets into 1 dataset using '*Big-Query*'
- I haven't used Excel to combine data as it only can have 1,048,576 rows but we have a total of 4,369,360 rows
  
  <img width="184" alt="Screenshot 2023-09-11 at 10 05 31 AM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/2d3f86ce-76b0-4fd7-9cf2-2a12243150c7">

**[Data-Exploration:](https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/blob/main/Data_Exploration.sql)** 
1. Check the ride_id length, which was 16
- Also check for ride_id length < OR > than 16. There was no data with ride_id > OR < 16

   <img width="265" alt="ride_length" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/a26b73af-8925-49f0-9e4b-e6102612312f">

2. From the data we got to know that there are 3 unique types of bikes in data (rideable_type)

   <img width="397" alt="Rideable_type" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/175c7b09-23c6-417b-b07a-76af0132b0c5">

3. There are 2 types of members: casual, member
   
   <img width="386" alt="count_by_member" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/4cc3e414-3a9d-4da1-8f98-ce903a9b7915">

4. The started_at and ended_at show the start and end time of the trip in YYYY-MM-DD hh:mm:ss UTC format. A new column ride_length can be created to find the total trip duration.

   <img width="464" alt="started_at,ended_at" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/255527e1-b10a-4806-a90d-3636bff6277f">

5. Also with the start and end times of the trip, I got **157 trips** that were greater than a day and **105909** less than a minute that need to be cleaned from the dataset.

---
### Data Cleaning & Final Table:

SQL : [Data Cleaning and Final Table](https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/blob/main/Cleaned_And_Final_Tab.sql)

1. Trips more than 1 day and less than a minute have been removed.
2. Created a final table with 3 more columns(ride_length, month, day_of_week) that will help in the analysis
3. Final rows in data_set are : **4,263,430**

---
### Analysing Data: 

SQL : [Data Analysis](https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/blob/main/combine_dataset.sql)
Tableau:  [Visualization](https://public.tableau.com/app/profile/shaili.dalal/viz/GoogleCertificate-Divvy_BikeCaseStudyDashboard/Dashboard4)

From Analysis and Visualisation, I found different data: 

1. Members and casual riders are compared on the basis on the type of bike
   <img width="685" alt="Screenshot 2023-09-11 at 4 22 27 PM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/383dd2f7-3ffd-4f4a-85dd-d47f12ebfc3a">
- In this data, it's evident that members make up a majority of the contributions, accounting for approximately 59.60%, whereas casual riders make up roughly 40.40% of the contributions. Additionally, the most frequently utilized bike types are classic_bike, electric_bike, followed by docked_bike. It's worth noting that docked bikes are exclusively utilized by casual riders, while in the case of classic and electric bikes, members contribute more.

2. Calculating the average trip duration based on factors such as the month, day of the week, and hour of the day will allow us to discern the variations in trip duration between regular members and casual riders.
   
   <img width="655" alt="Screenshot 2023-09-11 at 4 35 26 PM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/2ded3451-cd9c-4cd3-9c7f-7fc555b1303b">

- From the provided data, it becomes evident that casual riders tend to have longer trip durations compared to regular members. Additionally, it's noticeable that trip durations for regular members remain relatively consistent throughout the month, week, and at different times of the day. In contrast, casual members experience longer trip durations during the spring and summer seasons, on weekends, and during the afternoon hours.

3. Number of trips distributed by Month, Day of week and Hour of day

   <img width="678" alt="Screenshot 2023-09-11 at 4 44 25 PM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/24ed2037-6a13-4d1e-a3da-fa2bfb78b3eb">

- **Month:** Regarding the monthly trip patterns, both casual riders and members demonstrate similar trends, with higher trip numbers during the spring and summer months, and fewer trips in the winter. The difference between casual riders and members is the smallest during July, which falls in the summer season.
- **Week of the day:** In terms of trip patterns during the days of the week, casual riders show an increase in trips on Friday, Saturday, and Sunday, with a decline in trips during the weekdays. On the other hand, members tend to take more trips on weekdays.
- **Hours of the day:** Members display two distinct peaks in their daily trip patterns. One peak occurs early in the morning, roughly from 6 am to 8 am, and the other peak is in the evening, around 4 pm to 8 pm. In contrast, casual riders experience a steady increase in the number of trips throughout the day, reaching their peak in the evening, after which the number of trips gradually declines.

Based on the earlier observations, we can deduce that members likely use bikes for their weekday commuting to and from work, whereas casual riders utilize bikes throughout the day, particularly on weekends, primarily for recreational purposes. Both groups exhibit their highest activity levels during the spring and summer months.

4. I've compiled a roster of the top 20 stations where the highest number of trips originate, specifically noting the names of the starting stations.
   
   <img width="396" alt="Screenshot 2023-09-11 at 5 09 02 PM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/98f88f0f-a223-4f8d-a928-49f81dff96c4">

5. I've compiled a roster of the top 20 stations where the highest number of trips ended, specifically noting the names of the end stations.
   
   <img width="393" alt="Screenshot 2023-09-11 at 5 11 17 PM" src="https://github.com/shaili24/Google_Data_Analytics_Capestone_DivvyBike_Cyclistic_CaseStudy/assets/37610623/68de443f-c648-4674-b9fb-650d11dcc2a4">

----
### Some Recommendation:

1. To maximize the effectiveness of the marketing campaign, it would be advisable to focus more on the summer and spring seasons, which are the peak tourist periods in Chicago. Additionally, offering membership discounts to casual riders during this time could serve as an incentive, potentially encouraging them to transition into becoming full-fledged members.
   
2. Casual riders tend to be most active on weekends, so advertising on weekends to encourage their usage during weekdays.
   
3. Position advertisements at the 20 most frequently used bike pickup stations as well as the 20 most commonly chosen drop-off locations.
   
4. Furthermore, consider running an advertisement that presents a brief, second survey question aimed at collecting valuable data for the company's growth. This additional data collection through the short survey will be advantageous for the company's development.

 

