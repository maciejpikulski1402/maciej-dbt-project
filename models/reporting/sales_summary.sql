select

    country,

    category,

    sum(sales_amount) as total_sales,

    sum(quantity) as total_quantity,

    count(*) as total_transactions

from {{ ref('fct_sales') }}

group by

    country,
    category
