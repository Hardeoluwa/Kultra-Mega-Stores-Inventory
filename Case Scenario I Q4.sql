
-- 4. Bottom 10 customers (for advisory recommendation)
SELECT 
    `Customer Name`,
    ROUND(SUM(`Sales`) ,2) AS total_sales
FROM kms_sql_case_study_cleaned
GROUP BY `Customer Name`
ORDER BY total_sales ASC
LIMIT 10;