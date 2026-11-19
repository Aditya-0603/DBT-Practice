SELECT
    city,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(age), 0) AS average_age
FROM {{ ref('stg_customers') }}
GROUP BY city