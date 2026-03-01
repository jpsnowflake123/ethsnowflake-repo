{% macro random_macro() %}

    {% set query %}
        select distinct token_address
        from {{ ref('stg_token_transfers') }}
        limit 10
    {% endset %}

    {% set resultlist = [] %}

    {% if execute %}
        {% set result = run_query(query) %}
        {% set resultlist = result.columns[0].values() %}
    {% endif %}

    {{ log(resultlist, info=True) }}

    {{ return(resultlist) }}

{% endmacro %}