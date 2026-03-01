SELECT
 {{dbt_utils.star(from=ref('stg_transactions'),except=['VALUE'])}}
 FROM {{ref('stg_transactions')}}