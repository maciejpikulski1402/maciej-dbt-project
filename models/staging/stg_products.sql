select

    product_id,
    product_name,
    category,
    price,

    _fivetran_synced

from {{ source('google_sheets', 'PRODUCTS') }}
