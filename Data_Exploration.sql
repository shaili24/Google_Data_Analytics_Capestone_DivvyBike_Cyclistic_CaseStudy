-- Data exploration

-- Length of ride_id
SELECT LENGTH(ride_id) AS Length_ride_id FROM `divvybikes-397120.2022_divvybikes.2022_divvydata` LIMIT 1;

-- ride_id >16 or < 16
SELECT * FROM `divvybikes-397120.2022_divvybikes.2022_divvydata`
WHERE Length(ride_id) >16 OR Length(ride_id) < 16; 

-- There are 3 unique types of bike in data. Showing count value for each biketype
SELECT rideable_type, Count(*) AS count_by_ridetype FROM `divvybikes-397120.2022_divvybikes.2022_divvydata` 
GROUP BY (rideable_type);

-- 2 types of member - Causual & Member 
SELECT member_casual, COUNT(*) AS count_by_member FROM `divvybikes-397120.2022_divvybikes.2022_divvydata` 
GROUP BY (member_casual);

-- started at , ended at timestamp. Format - yyyy-mm-dd, hh-mm-ss, UTC
SELECT started_at , ended_at FROM `divvybikes-397120.2022_divvybikes.2022_divvydata` LIMIT 10; 

-- Trip longer than a day (157 rows)

SELECT COUNT(*) AS longer_than_a_day
FROM `divvybikes-397120.2022_divvybikes.2022_divvydata`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) >= 1440;

-- Trip less than a minute (105909 rows) 

SELECT COUNT(*) AS less_than_a_minute
FROM `divvybikes-397120.2022_divvybikes.2022_divvydata`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) <= 1; 
