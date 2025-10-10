{% macro hash_all_email_columns(model_relation) %}
  {% set columns = adapter.get_columns_in_relation(model_relation) %}
  {% for column in columns %}
    {{ hash_if_email(column.name) }}
    {%- if not loop.last -%},{%- endif -%}
  {% endfor %}
{% endmacro %}