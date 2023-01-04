{{
    config(
        materialized='table'
    )
}}


select * from {{ source('IMBAS', 'order_products') }}