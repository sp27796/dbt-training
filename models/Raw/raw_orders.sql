{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('src_globalmart', 'orders') }}