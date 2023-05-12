       {{
    config(
        materialized='incremental'
    )
}}
    
select a.first_name, a.last_name,b.order_date,b.status from {{source('jaffle_shop','customers')}} as a
inner join {{source('jaffle_shop','orders') }} as b
on a.id=b.user_id