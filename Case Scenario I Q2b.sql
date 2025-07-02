-- What are the Top 3 and Bottom 3 regions in terms of sales? 

SELECT 
    `Region`,
    ROUND(SUM(`Sales`) ,2) AS total_sales
FROM kms_sql_case_study_cleaned
GROUP BY `Region`
ORDER BY total_sales ASC
LIMIT 3