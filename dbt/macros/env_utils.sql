{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = target.database -%}
    {%- set target_name = target.name -%}
    {%- if custom_database_name is not none -%}
        {%- if custom_database_name.startsWith("TM_IGLOO") -%}
            {{ custom_database_name }}_{{ target_name | upper }}
        {%- else -%}
          {{ target_name | upper }}_{{ custom_database_name }}
        {%- endif -%}
    {{ print("Running custom_database_name: " ~ target_name ~ " , " ~ custom_database_name ~ ", " ~ default_database ~ ", " ~ node.name ) }}

    {%- else -%}
        {{ default_database }}
    {{ print("Running else: " ~ custom_database_name ~ ", " ~ default_database ~ ", " ~ node.name ) }}

    {%- endif -%}

{%- endmacro %}
