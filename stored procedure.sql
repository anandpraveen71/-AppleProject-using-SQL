select * from products;
create or replace procedure add_sale(p_product_id int,p_qty int)
language plpgsql
as $$
declare --all your variable
v_cnt int,v_product_name varchar(34),
v_product_price int;
begin
 --all the logic and code
 --checking if we have qty and product_name
 select count(*) into v_cnt from products
 where product_id = p_product_name and
 qty_remaining >= p_qty;
 --getting product_price and product_name based on prod id
 select product_name, price
  into v_product_name,v_product_price from products
 where product_id = 104
 if v_cnt > 0 then
  insert into sales(sale_date,product_id,qty,price)
  values (current_date,p_product_id,p_qty,v_product_price_qty)
  else
  end if;


  end;
  $$
  call add_sale()

  

 