{{
    config(
        materialized='view'
    )
}}




SELECT a.*, 
 b.product_id, 
 b.add_to_cart_order, 
 b.reordered 
FROM {{ ref('raw_orders') }} a 
 JOIN {{ ref('raw_order_products') }} b 
 ON a.order_id = b.order_id 
WHERE a.eval_set = 'prior'