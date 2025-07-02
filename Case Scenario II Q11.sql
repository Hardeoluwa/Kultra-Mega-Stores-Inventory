-- 11. Shipping cost analysis by order priority
SELECT 
    `Order Priority`,
    `Ship Mode`,
    COUNT(*) AS order_count,
    ROUND(AVG(`Shipping Cost`), 2) AS avg_shipping_cost
FROM
    kms_sql_case_study_cleaned
GROUP BY `Order Priority` , `Ship Mode`
ORDER BY `Order Priority` , `Ship Mode`;

-- To answer this question analytically, we need to evaluate how well shipping methods align with order priorities, based on two key assumptions: Delivery Truck = slowest but cheapest and Express Air = fastest but most expensive

---

## 🔍 Step-by-Step Evaluation:

### ✅ 1. Expectations Based on Assumptions 
-- | Order Priority | Expected Shipping Method               |
-- | ------------------ | ------------------------------------------ |
-- | Critical           | Express Air (Fast, no matter the cost)     |
-- | High               | Air methods preferred (Regular or Express) |
-- | Medium             | Any moderate shipping mode                 |
-- | Low                | Delivery Truck (Cost-saving)               |

---

### 2. Using the Query to Analyze Behavior

-- This will show:

-- How many critical orders used Delivery Truck instead of Express Air
 -- If low-priority orders are using expensive modes like Express Air


### ✅ 3. Interpretation of the result, we observe the following;

#### ✅ Ideal Pattern (Efficient):

-- Critical orders → mostly use Express Air
-- Low-priority orders → mostly use Delivery Truck

-- Inefficient Pattern (Wasted Spend):

-- Low-priority orders using Express Air
-- Critical orders using Delivery Truck

-- If you observe:

-- That many Low-priority orders used Express Air, then shipping cost wasn't well optimized.
-- That Critical orders were frequently delivered via Delivery Truck, then the company sacrificed service quality for cost.


 -- Final Insight Statement (Example):

-- Based on the analysis:

--  Critical orders were correctly prioritized using Express Air in most cases, ensuring fast delivery at a premium.
--  However, a significant number of Low-priority orders were also shipped using Express Air, which unnecessarily increased shipping costs.
--  Conversely, some High and Critical orders were shipped using Delivery Truck, potentially delaying delivery and risking customer dissatisfaction.
-- Recommendation:
-- Enforce stricter logistics rules that align shipping methods with order priority to minimize unnecessary costs and improve service quality.


