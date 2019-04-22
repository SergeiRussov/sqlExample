insert into addresses values
 (1, 'RUS', 'Moscow', 'Moscow street'),
 (2, 'RUS', 'Samara', 'Samara street'),
 (3, 'RUS', 'Omsk', 'Omsk street'),
 (4, 'RUS', 'Pavlovlsk', 'Pavlovsk street'),
 (5, 'RUS', 'Tumen', 'Tumen street'),
 (6, 'USA', 'New York', 'New York street'),
 (7, 'USA', 'Washington, D.C.', 'Washington, D.C. street'),
 (8, 'GBR', 'London', 'London street'),
 (9, 'GBR', 'London', 'London street'),
 (10, 'GBR', 'Liverpool', 'Liverpool street');

insert into roles values
 (1, 'admin'),
 (2, 'user');

insert into order_status values
 (1, 'order processing'),
 (2, 'is delivered'),
 (3, 'order delivered');
 
insert into category values
 (1, 'computer hardware'),
 (2, 'computer peripherals');

insert into goods values
 (1, 'motherboard', 'motherboard description', 5000, 1),
 (2, 'cpu', 'cpu description', 14000, 1),
 (3, 'ram', 'ram description', 6000, 1),
 (4, 'gpu', 'gpu description', 17000, 1),
 (5, 'power supply', 'power supply description', 7500, 1),
 (6, 'computer monitor', 'computer monitor description', 10000, 2),
 (7, 'keyboard', 'keyboard description', 3000, 2),
 (8, 'computer mouse', 'computer mouse description', 2000, 2),
 (9, 'headset', 'headset description', 3500, 2),
 (10, 'acoustic system', 'acoustic system description', 7000, 2);

insert into orders values
 (1, 1, 1, '2019-08-21', 1),
 (2, 2, 2, '2019-07-22', 2),
 (3, 3, 3, '2019-12-12', 3),
 (4, 4, 4, '2019-05-05', 3),
 (5, 3, 5, '2019-12-12', 2),
 (6, 5, 6, '2019-08-21', 1),
 (7, 7, 7, '2019-01-30', 2),
 (8, 7, 8, '2019-06-27', 3),
 (9, 8, 9, '2019-06-27', 2),
 (10, 10, 10, '2019-11-15', 1);

insert into customers values
 (1, 'Mike', 89025480321, 'example@bk.bg', 2, 1),
 (2, 'Petya', 89213654781, 'mail@mail.ru', 2, 2),
 (3, 'Klod', 85214369710, 'klod@mail.ru', 1, 3),
 (4, 'Pike', 85136452107, 'pike@yandex.ru', 1, 4),
 (5, 'Lux', 84563217985, 'lux@rambler.ru', 2, 5),
 (6, 'Masha', 85463120789, 'masha@bk.ru', 2, 6),
 (7, 'Liza', 8541236987, 'liza@liza.com', 2, 7),
 (8, 'Fedor', 84651239874, 'fedor@fedya.cu', 2, 8),
 (9, 'Yasuo', 84651232222, 'hasagi@feed.ru', 1, 9),
 (10, 'Kostya', 87456321547, 'kostya@mail.ru', 2, 10);




 