
SELECT
    TRY_CAST(customer_id AS INT) AS customer_id,

    NULLIF(TRIM(customer_name), '') AS customer_name,

    NULLIF(INITCAP(TRIM(city)), '') AS city,

    TRY_CAST(age AS INT) AS age

FROM {{ source('customer_data', 'customers') }}
