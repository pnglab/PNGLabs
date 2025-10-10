{% macro hash_if_email(column_name) %}
  CASE
    WHEN CONTAINS_SUBSTR(CAST({{ column_name }} AS STRING), '@')
    THEN TO_HEX(SHA256(CAST({{ column_name }} AS STRING)))
    ELSE CAST({{ column_name }} AS STRING)
  END AS {{ adapter.quote(column_name) }}
{% endmacro %}