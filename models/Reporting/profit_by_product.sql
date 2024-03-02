select 
    productid,
    category,
    productname,
    subcategory,
    sum(ordersellingprice)- sum(ordercostprice) as profit_by_prod

from {{ ref('stg_orders') }}
group by 
    productid,
    category,
    productname,
    subcategory