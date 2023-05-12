select  a.first_name,b.order_date,b.status from test_db.lis.customer_stg as a
inner join test_db.lis.orders_stg as b
on a.customer_id=b.customer_id