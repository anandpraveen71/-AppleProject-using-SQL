create table orders
( 
id serial,
sale_amt int
)
insert into orders(sale_amt) values(55),(45),(98),(64),(76),(56),(30),(15)
select *,row_number() over(order by sale_amt desc) as row_number,
rank() over(order by sale_amt desc) as rank,
Dense_rank() over(order by sale_amt desc) as d_rank
from orders 
insert into orders(sale_amt) values(64),(76)
select * from orders
