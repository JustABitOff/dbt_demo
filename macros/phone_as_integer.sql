{% macro phone_as_integer(phonenumber) %}
  cast(replace({{ phonenumber }}, '-', '') as bigint)
{% endmacro %}
