select

    sale_id,
    customer_id,
    product_id,
    quantity,
    sale_date,

    _fivetran_synced

from {{ source('google_sheets', 'SALES') }}
