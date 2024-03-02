select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice,
o.ordercostprice,
 ordersellingprice-ordercostprice as orderprofit,   
 p.productid,
 p.category,
 p.productname,
 p.subcategory,
 c.customername,
 c.segment,
 c.country
from {{ ref('raw_orders') }} o
left join {{ ref('raw_customer') }} c
on o.customerid=c.customerid
left join {{ ref('raw_product') }} p
on o.productid=p.productid