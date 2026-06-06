SELECT
    product_id,
    product_name,
    category,
    ROUND(price, 2) AS price
FROM {{ source('salesdb', 'bronze_products') }}