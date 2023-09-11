-- Created a new table which shows the total trip time in minutes. Column name - ride_length 

CREATE TABLE IF NOT EXISTS `divvybikes-397120.2022_divvybikes.trip_length`
 AS 
 SELECT ride_id, (
      EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
      EXTRACT(MINUTE FROM (ended_at - started_at)) +
      EXTRACT(SECOND FROM (ended_at - started_at)) / 60) AS ride_length
    FROM `divvybikes-397120.2022_divvybikes.2022_divvydata`;

-- Created a new table for trip length which doesn't have ride_length <1 & >1440
CREATE TABLE IF NOT EXISTS `divvybikes-397120.2022_divvybikes.trip_length_data` AS 
SELECT ride_id, ride_length FROM `divvybikes-397120.2022_divvybikes.trip_length`
WHERE ride_length >1 AND ride_length <1440;

-- Created a final table 
CREATE TABLE IF NOT EXISTS `divvybikes-397120.2022_divvybikes.2022_final_data` AS (
SELECT
    data.ride_id, rideable_type, started_at, ended_at, 
    ride_length,
    CASE EXTRACT(DAYOFWEEK FROM started_at) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'    
    END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month,
    start_station_name, end_station_name, member_casual
  FROM `divvybikes-397120.2022_divvybikes.2022_divvydata` data
  JOIN 
  `2022_divvybikes.trip_length_data` trip 
  ON 
  data.ride_id = trip.ride_id);

-- Checking the final_data table 
  SELECT * FROM `2022_divvybikes.2022_final_data` WHERE ride_length <1;

-- Rows after cleaning ride_length (4263430)
SELECT count(*) FROM `2022_divvybikes.2022_final_data`;
