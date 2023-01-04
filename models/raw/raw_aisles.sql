{{
    config(
        materialized='table'
    )
}}


select * from {{ source('IMBAS', 'aisles') }}