{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- set target_name = target.name -%}
    {%- if custom_database_name is not none -%}
        
        {{ target_name | upper }}_{{ custom_database_name }}
        
    {{ print("Running custom_database_name: " ~ target_name ~ " , " ~ custom_database_name ~ ", " ~ default_database ~ ", " ~ node.name ) }}

    {%- else -%}
        {{ default_database }}
    {{ print("Running else: " ~ custom_database_name ~ ", " ~ default_database ~ ", " ~ node.name ) }}

    {%- endif -%}

{%- endmacro %}
