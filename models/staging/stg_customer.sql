select *
from {{ source('google_sheets','CUSTOMER') }}
