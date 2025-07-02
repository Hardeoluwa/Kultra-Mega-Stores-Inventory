-- Which customer returned items, and what segment do they belong to? 

SELECT DISTINCT
    k.`Customer Name`,
    k.`Customer Segment`,
    k.`Order ID`,
    o.`Status` AS Order_Status
FROM
    kms_sql_case_study_cleaned k
        JOIN
    order_status o ON k.`Order ID` = o.`Order ID`
WHERE
    o.`Status` = 'Returned'
ORDER BY k.`Customer Name` , k.`Order ID`;
