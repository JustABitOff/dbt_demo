select
  orderitemsid
  , orderid
  , productid
from {{ ref('raw_orderitems') }}