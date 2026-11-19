
SELECT
    CAST(customer_id AS INT) AS customer_id,
    TRIM(customer_name) AS customer_name,
    INITCAP(TRIM(city)) AS city,
    CAST(age AS INT) AS age
FROM {{ source('customer_data', 'customers') }}
