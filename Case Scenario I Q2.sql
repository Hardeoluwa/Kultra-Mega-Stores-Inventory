-- 2. Top 3 and Bottom 3 regions in sales
-- Top 3
SELECT 
    `Region`,
    ROUND(SUM(`Sales`) ,2) AS total_sales
FROM kms_sql_case_study_cleaned
GROUP BY `Region`
ORDER BY total_sales DESC
LIMIT 3
