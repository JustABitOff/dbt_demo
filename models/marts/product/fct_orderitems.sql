select
  int_orderitems_joined.orderitemsid
  , int_orderitems_joined.orderid
  , int_orderitems_joined.customerid
  , int_orderitems_joined.orderplacedtimestamp
  , int_orderitems_joined.product
  , int_orderitems_joined.department
  , int_orderitems_joined.salesperson
  , int_orderitems_joined.orderstatus
  , int_orderitems_joined.price
from {{ ref('int_orderitems_joined') }} as int_orderitems_joined