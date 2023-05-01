with one as(SELECT
  orderid,
  SUM(amount) AS total_spent
FROM
  test_db.dbt.payment
GROUP BY
  orderid)
  select * from one

