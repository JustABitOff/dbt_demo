select
  customerid
  , name
  , {{ phone_as_integer('phone') }} as phonenumber
  , email as emailaddress
  , address
  , region
  , postalzip as zipcode
  , country
  , createdat
  , updatedat
from {{ source('furniture_store', 'customers') }}