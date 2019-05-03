insert into contacts values
 (1, 'Moscow, Babayevskaya street, 2', 89012547863, 'firstId@mail.ru'),
 (2, 'Tolyatti, Zhukova street, 2g', 82546931753, 'secondId@bk.ru'),
 (3, 'Samara, Amineva street, 1', 89312569876, 'thirdId@bk.ru'),
 (4, 'Moscow, Zubovskaya street, 5', 89036547893, 'fourthId@bk.ru'),
 (5, 'Tolyatti, Frunze street, 3', 85463214589, 'fifthId@mail.ru');

insert into roles values
 (1, 'adimn'),
 (2, 'moderator'),
 (3, 'user');

insert into categories values
 (1, 'computer hardware'),
 (2, 'computer peripherals');

insert into order_status values
 (1, 'order processing'),
 (2, 'is delivered'),
 (3, 'order delivered');

insert into coupons values
 (1, 20),
 (2, 30),
 (3, 40);

insert into goods values
 (1, 'motherboard', 5000, 1),
 (2, 'cpu', 14000, 1),
 (3, 'ram', 6000, 1),
 (4, 'gpu', 17000, 1),
 (5, 'power supply', 7500, 1),
 (6, 'computer monitor', 10000, 2),
 (7, 'keyboard', 3000, 2),
 (8, 'computer mouse', 2000, 2),
 (9, 'headset', 3500, 2),
 (10, 'acoustic system', 7000, 2);

insert into customers values
 (1, 'Petrov Petya', 1, 1),
 (2, 'Sidorov Sidor', 2, 2),
 (3, 'Ivanov Ivan', 3, 3),
 (4, 'Kulikova Masha', 4, 3),
 (5, 'Udina Liza', 5, 3);

insert into orders values
 (1, '2019-08-21', 25000, 1, null),
 (2, '2019-07-22', 24500, 2, 1),
 (3, '2019-05-05', 7000, 3, 3),
 (4, '2019-01-30', 8500, 2, 2),
 (5, '2019-06-27', 49500, 1, null);

insert into goods_orders values
 (1, 1),
 (1, 2),
 (1, 3),
 (2, 4),
 (2, 5),
 (3, 10),
 (4, 9),
 (4, 8),
 (4, 7),
 (5, 1),
 (5, 2),
 (5, 3),
 (5, 4),
 (5, 5);

insert into customers_orders values
 (1, 1),
 (2, 2),
 (3, 3),
 (4, 4),
 (5, 5);
 