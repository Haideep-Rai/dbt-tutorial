with
    customer as (select id,first_name,last_name from test_db.dbt.customers),
    orders as (select id,user_id,order_date from test_db.dbt.orders),
    payment as (select id,orderid,amount from test_db.dbt.payment),
    merg as(
            select * from customer as c
            inner join orders as o
            on c.id=o.user_id
            inner join payment as p
            on p.orderid=o.id
            ),
   needed_table as(
            select concat(first_name,' ',last_name) as name,order_date,sum(amount)  from merg
            group by name, order_date
            )
    select * from needed_table;