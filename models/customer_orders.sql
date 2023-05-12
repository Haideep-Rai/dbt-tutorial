
with customers as (

    select * from {{ ref('customer_stg') }}

),

orders as (

    select * from {{ ref('orders_stg') }}

),

customer_order as (

    select
          c.customer_id,
          c.first_name,
          c.last_name,
          o.status,
          o.order_date
          from customers   as c
          inner join orders  as o
          on o.customer_id= c.customer_id
)
select * from customer_order
        