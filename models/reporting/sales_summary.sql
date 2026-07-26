select
    count(*) as total_sales
from {{ ref('fct_sales') }}
