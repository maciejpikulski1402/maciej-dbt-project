{% snapshot customer_snapshot %}

{{
    config(

        target_database='PC_FIVETRAN_DB',

        target_schema='SNAPSHOTS',

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
