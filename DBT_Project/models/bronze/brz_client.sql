{{
  config(
    alias='client'
  )
}}

SELECT
    {{ hash_all_email_columns(source('dbt_dataset', 'raw_client')) }}
FROM
    {{ source('dbt_dataset', 'raw_client') }}