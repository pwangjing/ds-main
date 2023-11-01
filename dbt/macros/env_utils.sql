{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- set target = target.name -%}
    {{ print("Running some_macro: " ~ custom_database_name ~ ", " ~ default_database ~ ", " ~ node.name ) }}
    {%- if custom_database_name is not none -%}
        
        {{ target.name | upper }}{{ default_database }}
        

    {%- else -%}
        {{ default_database }}

    {%- endif -%}

{%- endmacro %}
