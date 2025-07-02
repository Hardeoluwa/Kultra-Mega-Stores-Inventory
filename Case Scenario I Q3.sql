-- 3. Total sales of appliances in Ontario
SELECT 
    ROUND(SUM(`Sales`) ,2) AS total_appliances_sales
FROM
    kms_sql_case_study_cleaned
WHERE
    `Product Sub-Category` = 'Appliances'
        AND `Province` = 'Ontario';