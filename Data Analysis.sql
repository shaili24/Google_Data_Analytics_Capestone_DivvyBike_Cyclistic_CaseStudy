-- Average trip time by casual/members
SELECT member_casual, AVG(ride_length) AS avg_trip_time FROM `divvybikes-397120.2022_divvybikes.2022_final_data` 
GROUP BY
member_casual;

-- count of bike_type used by causual/members

SELECT member_casual, rideable_type, count(rideable_type) AS used_no_of_bike
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual; 

-- number of trips per month 

SELECT member_casual, month, count(ride_id) AS no_of_trips,
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, month
ORDER BY member_casual, month; 

-- number of trips per day of week 

SELECT member_casual, day_of_week, count(ride_id) 
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week DESC; 

-- number of trips per hour

SELECT member_casual, EXTRACT(Hour FROM started_at) AS hour_of_day, count(ride_id) AS trip_per_hour
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, hour_of_day
ORDER BY member_casual;

-- Average trip_length per day of week 
SELECT member_casual, day_of_week, avg(ride_length) AS avg_trip_time
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week ; 

-- Averega trip length per month
SELECT member_casual, month, avg(ride_length) AS avg_trip_time
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, month
ORDER BY member_casual, month ; 

-- Average trip length per hour of day 
SELECT member_casual, EXTRACT(Hour FROM started_at) AS hour_of_day, avg(ride_length) AS avg_trip_time_per_hour
FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY member_casual, hour_of_day
ORDER BY member_casual;

-- Top 20 list of station from where most ride has been started

SELECT start_station_name, count(ride_id) AS most_ride_started_from FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY start_station_name
ORDER BY count(ride_id) DESC LIMIT 20; 

-- Top 20 list of stations where the most ride ends

SELECT end_station_name, count(ride_id) AS most_ride_ended_at FROM `divvybikes-397120.2022_divvybikes.2022_final_data`
GROUP BY end_station_name
ORDER BY count(ride_id) DESC LIMIT 20; 
