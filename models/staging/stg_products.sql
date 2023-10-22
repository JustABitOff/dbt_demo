select
  productid
  , product
  , price
  , department
  , createdat
  , updatedat
from {{ ref('raw_products') }}