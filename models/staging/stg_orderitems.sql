select
  orderitemsid
  , orderid
  , productid
from {{ source('furniture_store', 'orderitems') }}