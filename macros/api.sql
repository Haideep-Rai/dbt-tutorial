{% macro get_api_data(url="https://www.gov.uk/bank-holidays.json") %}
    {% set response = requests.get(api_url) %}
    {% set data = response.json() %}
    {{ return(data) }}
{% endmacro %}
