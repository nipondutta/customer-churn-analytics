-- ============================================
-- Customer Churn Analysis
-- ============================================

-- >>Set up MySQL
-- USE churn_analysis;

-- >>Create the customers table
-- CREATE TABLE customers (
--     customerID VARCHAR(20) PRIMARY KEY,
--     gender VARCHAR(20),
--     SeniorCitizen INT,
--     Partner VARCHAR(10),
--     Dependents VARCHAR(10),
--     tenure INT,
--     Contract VARCHAR(50),
--     PaymentMethod VARCHAR(100),
--     InternetService VARCHAR(50),
--     MonthlyCharges DECIMAL(10,2),
--     TotalCharges DECIMAL(10,2),
--     Churn VARCHAR(10),
--     ChurnProbability DECIMAL(6,4),
--     RiskLevel VARCHAR(20)
-- );

-- >>Verifyling all data are imported correctly
-- SELECT *
-- FROM customers
-- LIMIT 10;

-- >>Total number of customers and churned customers
-- select count(*) as total_customers from customers;
-- select count(*) as churned_customers from customers where Churn = 'Yes';

-- >>Overall churn rate
-- select Round(
--     sum(case when churn='Yes' then 1 else 0 end)
--     * 100.00 / count(*),
--     2
-- ) as churn_rate
-- from customers;

-- >>Which contract type has the highest churn rate?
-- SELECT
--     Contract,
--     COUNT(*) AS total_customers,
--     SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
--     ROUND(
--         SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS churn_rate
-- FROM customers
-- GROUP BY Contract
-- ORDER BY churn_rate DESC;

-- >>churn by payment method
-- SELECT
--     PaymentMethod,
--     COUNT(*) AS total_customers,
--     SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
--     ROUND(
--         SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS churn_rate
-- FROM customers
-- GROUP BY PaymentMethod
-- ORDER BY churn_rate DESC;

-- >>Churn by internet service type
-- SELECT
--     InternetService,
--     COUNT(*) AS total_customers,
--     SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
--     ROUND(
--         SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
--         * 100.0 / COUNT(*),
--         2
--     ) AS churn_rate
-- FROM customers
-- GROUP BY InternetService
-- ORDER BY churn_rate DESC;

-- >>Churn by tenure group
-- SELECT
--     CASE
--         WHEN tenure <= 12 THEN '0-12 Months'
--         WHEN tenure <= 24 THEN '13-24 Months'
--         WHEN tenure <= 48 THEN '25-48 Months'
--         ELSE '49-72 Months'
--     END AS tenure_group,

--     COUNT(*) AS total_customers,

--     SUM(
--         CASE
--             WHEN Churn = 'Yes' THEN 1
--             ELSE 0
--         END
--     ) AS churned_customers,

--     ROUND(
--         SUM(
--             CASE
--                 WHEN Churn = 'Yes' THEN 1
--                 ELSE 0
--             END
--         ) * 100.0 / COUNT(*),
--         2
--     ) AS churn_rate

-- FROM customers

-- GROUP BY tenure_group
-- ORDER BY churn_rate DESC;

-- >>Find high risk customers
-- SELECT
--     customerID,
--     Contract,
--     tenure,
--     MonthlyCharges,
--     ChurnProbability,
--     RiskLevel
-- FROM customers
-- WHERE RiskLevel = 'High'
-- ORDER BY ChurnProbability DESC;

-- >> total high risk customers
-- SELECT COUNT(*) AS total_high_risk_customers
-- FROM customers
-- WHERE RiskLevel = 'High';

-- >>Select all high risk customers with high monthly charges
-- select avg(monthlyCharges) 
-- as avg_monthly_charges from customers;

-- select
--     customerID,
--     Contract,
--     tenure,
--     MonthlyCharges,
--     ChurnProbability,
--     RiskLevel
-- from customers
-- where RiskLevel = 'High'
-- and MonthlyCharges > (
--     select avg(monthlyCharges) from customers
-- )
-- order by ChurnProbability desc;

-- >>REvenue at risk
-- select
-- round(sum(monthlyCharges),2) as monthly_revenue_at_risk
-- from customers
-- where RiskLevel = 'high';

-- >>revenue at risk by contract
-- select
-- contract,
-- count(*) as high_risk_customers,
-- round(sum(monthlyCharges),2) as monthly_revenue_at_risk
-- from customers
-- where RiskLevel = 'high'
-- group by contract
-- order by monthly_revenue_at_risk desc;

-- SELECT
--     Contract,
--     SUM(CASE WHEN RiskLevel = 'High' THEN 1 ELSE 0 END) AS high_risk_customers,
--     SUM(CASE WHEN RiskLevel = 'Mid' THEN 1 ELSE 0 END) AS mid_risk_customers,
--     SUM(CASE WHEN RiskLevel = 'Low' THEN 1 ELSE 0 END) AS low_risk_customers,
--     ROUND(sum(monthlyCharges),2) as monthly_revenue_at_risk
-- FROM customers
-- GROUP BY Contract
-- ORDER BY monthly_revenue_at_risk DESC;

-- >>high valued churned customers
-- SELECT
--     customerID,
--     Contract,
--     tenure,
--     MonthlyCharges,
--     TotalCharges
-- FROM customers
-- WHERE Churn = 'Yes'
--   AND MonthlyCharges > (
--       SELECT AVG(MonthlyCharges)
--       FROM customers
--   )
-- ORDER BY MonthlyCharges DESC;

-- >>customer segment query
-- SELECT
--     customerID,
--     Contract,
--     tenure,
--     MonthlyCharges,
--     ChurnProbability,
--     RiskLevel,

--     CASE
--         WHEN RiskLevel = 'High'
--              AND MonthlyCharges >= 70
--              AND tenure <= 12
--         THEN 'Priority Risk'

--         WHEN RiskLevel = 'High'
--         THEN 'High Risk'

--         WHEN RiskLevel = 'Medium'
--         THEN 'Medium Risk'

--         ELSE 'Low Risk'
--     END AS CustomerSegment

-- FROM customers;

-- >>Find the Priority Risk segment
-- SELECT
--     customerID,
--     Contract,
--     tenure,
--     MonthlyCharges,
--     ChurnProbability
-- FROM (
--     SELECT
--         customerID,
--         Contract,
--         tenure,
--         MonthlyCharges,
--         ChurnProbability,
--         RiskLevel,

--         CASE
--             WHEN RiskLevel = 'High'
--                  AND MonthlyCharges >= 70
--                  AND tenure <= 12
--             THEN 'Priority Risk'

--             WHEN RiskLevel = 'High'
--             THEN 'High Risk'

--             WHEN RiskLevel = 'Medium'
--             THEN 'Medium Risk'

--             ELSE 'Low Risk'
--         END AS CustomerSegment

--     FROM customers
-- ) AS segmented_customers

-- WHERE CustomerSegment = 'Priority Risk'

-- ORDER BY ChurnProbability DESC;

-- >>summary for power bi query
-- SELECT
--     RiskLevel,
--     COUNT(*) AS customer_count,
--     ROUND(AVG(ChurnProbability), 3) AS avg_churn_probability,
--     ROUND(SUM(MonthlyCharges), 2) AS monthly_revenue
-- FROM customers
-- GROUP BY RiskLevel
-- ORDER BY
--     CASE RiskLevel
--         WHEN 'High' THEN 1
--         WHEN 'Medium' THEN 2
--         WHEN 'Low' THEN 3
--     END DESC;