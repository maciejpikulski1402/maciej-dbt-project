{% snapshot customer_snapshot %}

{{
    config(
        unique_key='customer_id',
        strategy='check',
        check_cols=[
            'customer_name',
            'country'
        ]
    )
}}

select *
from {{ ref('stg_customer') }}

{% endsnapshot %}
