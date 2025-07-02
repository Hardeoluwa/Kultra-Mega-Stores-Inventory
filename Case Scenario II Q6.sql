-- Who are the most valuable customers, and what products or services do they typically purchase? 

SELECT 
    `Customer Name`,
    ROUND(SUM(`Sales`) ,2) AS total_sales,
    GROUP_CONCAT(DISTINCT `Product Category` ORDER BY `Product Category` SEPARATOR ', ') AS product_categories,
    GROUP_CONCAT(DISTINCT `Product Sub-Category` ORDER BY `Product Sub-Category` SEPARATOR ', ') AS product_subcategories
FROM 
    kms_sql_case_study_cleaned
GROUP BY 
    `Customer Name`
ORDER BY 
    total_sales DESC
LIMIT 5;

