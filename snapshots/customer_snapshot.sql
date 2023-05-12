{% snapshot customer_snapshot%}
{{
    config(
        target_database='test_db',
        target_schema='lis',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at',
    )    
}}
SELECT * from test_db.dbt.customers

{%endsnapshot%}