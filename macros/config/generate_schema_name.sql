{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- if custom_schema_name is none -%}
        {{ target.schema }}
    {%- else -%}
        {%- if target.name == 'prod' -%}
            {{ custom_schema_name | trim }}
        {%- else -%}
            {{ target.schema }}
        {%- endif -%}
    {%- endif -%}

{%- endmacro %}