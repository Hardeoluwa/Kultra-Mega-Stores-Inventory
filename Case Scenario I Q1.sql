-- Which product category had the highest sales? 

SELECT 
    `Product Category`,
    ROUND(SUM(`Sales`) ,2)AS total_sales
FROM kms_sql_case_study_cleaned
GROUP BY `Product Category`
ORDER BY total_sales DESC