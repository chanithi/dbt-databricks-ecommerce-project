SELECT
    o.order_id,
    o.customer_id,
    o.product_id,
    o.quantity,
    o.order_date,
    p.price,
    ROUND(o.quantity * p.price, 2) AS total_amount
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_products') }} p
    ON o.product_id = p.product_id