select
  productid
  , product
  , price
  , department
  , createdat
  , updatedat
from {{ source('furniture_store', 'products') }}