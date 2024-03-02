{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('src_globalmart', 'customers') }} --RAW.GLOBAL_MART.CUSTOMERS