-- Check for Leading/Trailing Spaces 
UPDATE `final_507`.`encounters-by-facility_2012-2023_20240702`
SET county_name = TRIM(county_name);

UPDATE `final_507`.`low-income_or_disadvantaged_communities_cleaned`
SET County = TRIM(County);

-- Ensure Uppercase Formatting is Consistent
UPDATE `final_507`.`encounters-by-facility_2012-2023_20240702`
SET county_name = UPPER(county_name);

UPDATE `final_507`.`low-income_or_disadvantaged_communities_cleaned`
SET County = UPPER(County);

-- Check for Different Naming Conventions
SELECT DISTINCT e.county_name, i.County
FROM `final_507`.`encounters-by-facility_2012-2023_20240702` e
LEFT JOIN `final_507`.`low-income_or_disadvantaged_communities_cleaned` i
ON e.county_name = i.County
WHERE i.County IS NULL;
