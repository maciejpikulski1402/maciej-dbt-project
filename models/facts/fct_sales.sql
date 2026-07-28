select

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

    s.quantity * p.price as sales_amount

from {{ ref('stg_sales') }} s

left join {{ ref('dim_customer') }} c
       on s.customer_id = c.customer_id

left join {{ ref('dim_product') }} p
       on s.product_id = p.product_id
