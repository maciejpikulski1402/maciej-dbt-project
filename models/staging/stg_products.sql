select *
from {{ source('google_sheets','PRODUCTS') }}
