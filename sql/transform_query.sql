-- This script performs data transformation for the Final Team Project pipeline.
-- It aggregates ER visits by county and joins the result with income data.

-- It creates a summary table that aggregates ER visits by county and attaches median income
CREATE TABLE er_income_summary AS
SELECT 
    e.county_name,
    SUM(e.count) AS total_visits,
    i.MHI_2019_5YR AS median_income
FROM 
    `encounters-by-facility_2012-2023_20240702` e
JOIN 
    `low-income_or_disadvantaged_communi...` i
ON 
    e.county_name = i.County
GROUP BY 
    e.county_name, i.MHI_2019_5YR;

-- Verify the summary table (Run separately if needed)
SELECT * FROM er_income_summary LIMIT 10;
