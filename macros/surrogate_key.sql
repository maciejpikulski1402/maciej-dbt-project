{% macro surrogate_key(customer_id, product_id) %}

md5(
    {{ customer_id }}
    || '-'
    || {{ product_id }}
)

{% endmacro %}
