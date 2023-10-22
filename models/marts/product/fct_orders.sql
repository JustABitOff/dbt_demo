select
  int_orderitems_joined.orderid
  , int_orderitems_joined.customerid
  , int_orderitems_joined.orderplacedtimestamp
  , int_orderitems_joined.salesperson
  , int_orderitems_joined.orderstatus
  , sum(int_orderitems_joined.price) as ordertotal
from {{ ref('int_orderitems_joined') }} as int_orderitems_joined
group by 1, 2, 3, 4, 5