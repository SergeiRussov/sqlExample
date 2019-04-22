select * 
from goods 
where (category_id = 1) 
order by (description);

select * 
from customers 
where (email like '%@mail.ru');

select * 
from customers 
where address_id in 
	(select id 
	from addresses 
	where (city='RUS')) 
order by (id) desc;

select * 
from orders 
where goods_id in 
	(select id 
	from goods 
	where (price between 5000 and 15000));

select distinct name as customer, phone 
from customers 
where id in 
	(select customer_id 
	from orders 
	where (order_status_id='1'));

select name, email 
from customers 
inner join orders on customers.id = orders.customer_id;

select name as item, description, price, 
	(select name 
	from customers 
	where (orders.customer_id = customers.id)) as customer, order_date 
from goods 
left join orders on goods.id = orders.goods_id 
where (goods.price > 7000) 
order by (goods.price);





