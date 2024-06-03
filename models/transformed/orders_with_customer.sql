{{ config(materialized='table') }}


SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM {{source('uwninnipeg', 'ORDERS')}} o
JOIN {{source('uwninnipeg', 'CUSTOMER')}} c ON o.customer_id = c.customer_id