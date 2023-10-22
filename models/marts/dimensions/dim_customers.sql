select
  stg_customers.customerid
  , stg_customers.name
  , stg_customers.phonenumber
  , stg_customers.emailaddress
  , stg_customers.address
  , stg_customers.region
  , stg_customers.zipcode
  , stg_customers.country
  , stg_customers.createdat
from {{ ref('stg_customers') }} as stg_customers