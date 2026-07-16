/* ==========================================================
   PROJECT: E-Commerce Customer & Sales Analysis
   Analyst: Joanna
   Tools: SQL | Power BI | AI
   ========================================================== */

/* ==========================================================
   Manager Request #1
   Top 10 Customers by Total Spending
   Business Goal:
   Identify the highest-value customers for a loyalty program.
   ========================================================== */
SELECT customer_id, total_spend_usd
FROM customers AS Top_customers
ORDER BY total_spend_usd DESC
LIMIT 10;


/* ==========================================================
   Manager Request #2
   Revenue by Product Category
   Business Goal:
   Determine which categories generate the highest revenue.
   ========================================================== */

SELECT category, SUM(total_revenue_usd) AS total_revenue 
FROM product_summary
GROUP BY category 
ORDER BY total_revenue desc ;

/* ==========================================================
   Manager Request #3
   Revenue by Country
   Business Goal:
   Determine which country generate the highest revenue.
   ========================================================== */

SELECT country, SUM(total_spend_usd) AS total_spend
FROM customers
GROUP BY country
ORDER BY total_spend DESC ;

/* ==========================================================
   Manager Request #4
   Revenue by Membership Tier
   Business Goal:
   We have three membership tiers: Bronze, Silver, and Gold. I want to know which membership tier 
   generates the most revenue so we can decide where to focus our loyalty program.
   ========================================================== */
SELECT membership_tier, SUM(total_spend_usd) AS membership_revenue
FROM customers
GROUP BY membership_tier
ORDER BY membership_revenue DESC;

SELECT customer_id, days_since_last_purchase
FROM customers
WHERE  days_since_last_purchase > 180
ORDER BY days_since_last_purchase DESC 
LIMIT 10 ;

