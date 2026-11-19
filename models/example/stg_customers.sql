
WITH cleaned_customers AS (

    SELECT
        TRY_CAST(customer_id AS INT) AS customer_id,
        TRIM(customer_name) AS customer_name,
        INITCAP(TRIM(city)) AS city,
        TRY_CAST(age AS INT) AS age

    FROM {{ source('customer_data', 'customers') }}

)

SELECT
    customer_id,
    customer_name,
    city,
    age

FROM cleaned_customers

WHERE customer_id IS NOT NULL
  AND customer_name IS NOT NULL
  AND customer_name != ''
  AND city IS NOT NULL
  AND city != ''
  AND age >= 0
