select *
from {{ source('google_sheets','SALES') }}
