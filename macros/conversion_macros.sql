{% macro conversion_stablecoin(column_name) %}
    sum({{column_name}})/1e6
{% endmacro %}