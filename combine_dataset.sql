-- Combine all the datasets into new table - "2022_divydata"

CREATE TABLE IF NOT EXISTS `divvybikes-397120.2022_divvybikes.2022_divvydata`
AS

(SELECT * FROM `divvybikes-397120.2022_divvybikes.01_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.02_divvydata` 
UNION ALL 
SELECT * FROM `divvybikes-397120.2022_divvybikes.03_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.04_divvydata` 
UNION ALL 
SELECT * FROM `divvybikes-397120.2022_divvybikes.05_divvydata` 
UNION ALL 
SELECT * FROM `divvybikes-397120.2022_divvybikes.06_divvydata` 
UNION ALL 
SELECT * FROM `divvybikes-397120.2022_divvybikes.07_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.08_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.09_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.10_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.11_divvydata` 
UNION ALL
SELECT * FROM `divvybikes-397120.2022_divvybikes.12_divvydata` 
);

-- Count the number of row in 2022_divydata

SELECT COUNT(*) AS Total_data FROM `divvybikes-397120.2022_divvybikes.2022_divvydata`; 
