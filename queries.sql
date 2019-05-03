select name as customer, contacts.address, contacts.phone, contacts.email
 from customers
  left join contacts on contacts.id = customers.id;

select customers.name as customer, orders.id as order_id, orders.order_date as order_date, goods.name as item, goods.price as price 
 from customers
  full join customers_orders on customers.id = customers_orders.customer_id
   full join orders on orders.id = customers_orders.order_id
    full join goods_orders on orders.id = goods_orders.order_id
     full join goods on goods.id = goods_orders.good_id
      where (orders.id = customers_orders.order_id);

select name as customer, contacts.email as email
 from customers
  left join contacts on contacts.id = customers.contact_id
   where (contacts.email like '%@mail.ru');

select name, price,
 (select name
  from categories
   where goods.category_id = categories.id)
 from goods
  where (price between 5000 and 15000);

select name as customer, (orders.order_date, orders.total_price) as history
 from customers
  right join customers_orders on customers_orders.customer_id = customers.id
   right join orders on orders.id = customers_orders.order_id;
  
  
