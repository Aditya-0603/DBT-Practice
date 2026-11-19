SELECT *
FROM {{ source('customer_data', 'customers') }}