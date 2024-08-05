select
  orderid
  , customerid
  , salesperson
  , orderplacedtimestamp
  , orderstatus
  , updatedat
from {{ source('furniture_store', 'orders') }}