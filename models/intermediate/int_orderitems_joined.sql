select
  stg_orderitems.orderitemsid
  , stg_orderitems.orderid
  , stg_orders.customerid
  , stg_orders.orderplacedtimestamp
  , stg_products.product
  , stg_products.department
  , stg_orders.salesperson
  , stg_orders.orderstatus
  , stg_products.price
from {{ ref('stg_orderitems') }} as stg_orderitems
inner join {{ ref('stg_products') }} as stg_products
  on stg_orderitems.productid = stg_products.productid
inner join {{ ref('stg_orders') }} as stg_orders
  on stg_orderitems.orderid = stg_orders.orderid