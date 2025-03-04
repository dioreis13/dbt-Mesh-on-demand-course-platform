{% macro find_datatypes(FCT_ORDERS) %}
    {% set cols=adapter.get_columns_in_relation(FCT_ORDERS) %}
    {%- for col in cols %}
      - name: {{ col.name | lower }}
        data_type: {{ col.dtype | lower }}
    {%- endfor %}
{% endmacro %}