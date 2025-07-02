-- 9. Most profitable consumer customer
SELECT 
    `Customer Name`,
    SUM(`Profit`) AS total_profit
FROM kms_sql_case_study_cleaned
WHERE `Customer Segment` = 'Consumer'
GROUP BY `Customer Name`
ORDER BY total_profit DESC
LIMIT 1;

