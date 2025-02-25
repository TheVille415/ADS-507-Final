-- Create the database (if not already created)
CREATE DATABASE IF NOT EXISTS final_507;
USE final_507;

-- Drop tables if they already exist (for reusability)
DROP TABLE IF EXISTS er_visits;
DROP TABLE IF EXISTS income_data;

-- Create ER Visits Table
CREATE TABLE er_visits (
    year INT,
    oshpd_id VARCHAR(50),
    facility_name VARCHAR(255),
    county_name VARCHAR(100),
    er_service_level_desc VARCHAR(50),
    type VARCHAR(50),
    count INT
);

-- Create Income Data Table
CREATE TABLE income_data (
    OBJECTID_1 INT,
    STATEFP VARCHAR(10),
    COUNTYFP VARCHAR(10),
    TRACTCE VARCHAR(10),
    GEOID VARCHAR(20),
    NAME VARCHAR(255),
    County VARCHAR(100),  -- Key for joining with ER visits
    Population INT,
    MHI_2019_5YR FLOAT,   -- Median Household Income (Main analysis metric)
    Poverty FLOAT,
    Unemployment FLOAT,
    Income_Group VARCHAR(50),
    ZIP VARCHAR(10)  -- Optional if needed for ZIP-based analysis later
);

-- Verify the structure of tables (Optional)
DESCRIBE er_visits;
DESCRIBE income_data;
