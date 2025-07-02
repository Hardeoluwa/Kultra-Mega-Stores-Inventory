-- Q8: Corporate customer with most orders from 2009 to 2012
SELECT 
    `Customer Name`,
    COUNT(DISTINCT `Order ID`) AS order_count
FROM 
    kms_sql_case_study_cleaned
WHERE 
    `Customer Segment` = 'Corporate'
    AND STR_TO_DATE(`Order Date`, '%W, %M %e, %Y') BETWEEN '2009-01-01' AND '2012-12-31'
GROUP BY 
    `Customer Name`
ORDER BY 
    order_count DESC
LIMIT 1;













