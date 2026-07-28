select

    customer_id,
    customer_name,
    country,

    _fivetran_synced

from {{ source('google_sheets', 'CUSTOMER') }}
