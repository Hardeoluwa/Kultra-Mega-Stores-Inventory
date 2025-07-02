-- 5. Shipping method with highest cost
SELECT 
    `Ship Mode`,
    ROUND(SUM(`Shipping Cost`), 2) AS total_shipping_cost
FROM kms_sql_case_study_cleaned
GROUP BY `Ship Mode`
ORDER BY total_shipping_cost DESC
LIMIT 1;
