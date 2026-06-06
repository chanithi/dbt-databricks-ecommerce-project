SELECT
    customer_id,
    name,
    city
FROM {{ ref('stg_customers') }}