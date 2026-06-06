SELECT
    customer_id,
    name,
    city
FROM {{ source('salesdb', 'bronze_customers') }}