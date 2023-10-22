{% test assert_value_is_positive_number(model, column_name) %}
    select
      *
    from {{ model }}
    where {{ column_name }} < 0
{% endtest %}