-- 7. Small business customer with highest sales
SELECT 
    `Customer Name`, ROUND(SUM(`Sales`) ,2) AS total_sales
FROM
    kms_sql_case_study_cleaned
WHERE
    `Customer Segment` = 'Small Business'
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 1

