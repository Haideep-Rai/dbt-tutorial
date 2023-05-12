{{ config(
    pre_hook=[
      "CREATE TABLE oki(
        id number,
        product_name VARCHAR,
        mfg_date DATE
      )
        "
    ]
) }}
select * from test_db.lis.customer_stg
