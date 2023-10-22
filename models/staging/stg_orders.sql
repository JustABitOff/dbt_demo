select
  orderid
  , customerid
  , salesperson
  , orderplacedtimestamp
  , orderstatus
  , updatedat
from {{ ref('raw_orders') }}