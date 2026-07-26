select 
   customer_id,
    upper(customer_name) as customer_name,
country
from {{ source('google_sheets','CUSTOMER') }}
