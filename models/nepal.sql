{{ config(
    pre_hook=[
      "CREATE TABLE eagle(
        id number,
        product_name VARCHAR,
        mfg_date DATE
      )
        "
    ]
) }}
select id,product_name,mfg_date from eagle
