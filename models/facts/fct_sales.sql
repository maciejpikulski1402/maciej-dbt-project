{{ config(
    materialized='incremental',
    unique_key='sale_id'
) }}

select
    {{ surrogate_key('s.customer_id','s.product_id') }} as sales_key,
    s.sale_id,
    s.sale_date,

    s.customer_id,
    c.customer_name,
    c.country,

    s.product_id,
    p.product_name,
    p.category,

    s.quantity,
    p.price,

    {{ calculate_sales_amount('s.quantity', 'p.price') }} as sales_amount

from {{ ref('stg_sales') }} s

left join {{ ref('dim_customer') }} c
    on s.customer_id = c.customer_id

left join {{ ref('dim_product') }} p
    on s.product_id = p.product_id

{% if is_incremental() %}

where s.sale_date >
(
    select max(sale_date)
    from {{ this }}
)

{% endif %}
