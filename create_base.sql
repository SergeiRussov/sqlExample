create table roles
(
 id int not null,
 name varchar not null,
 primary key (id)
);

create table category
(
 id int not null,
 name varchar not null,
 primary key (id)
);

create table goods
(
 id int not null,
 name varchar not null,
 description varchar not null,
 price int not null,
 category_id int not null,
 primary key (id),
 foreign key (category_id) references category (id)
);

create table order_status
(
 id int not null,
 name varchar not null,
 primary key (id)
);

create table addresses
(
 id int not null,
 country varchar not null,
 city varchar not null,
 street varchar not null,
 primary key (id)
);

create table customers
(
 id int not null,
 name varchar not null,
 phone numeric not null,
 email varchar not null,
 role_id int not null,
 address_id int not null,
 primary key (id),
 foreign key (role_id) references roles (id),
 foreign key (address_id) references addresses (id)
);

create table orders
(
 id int not null,
 customer_id int not null,
 goods_id int not null,
 order_date date not null,
 order_status_id int not null,
 primary key (id),
 foreign key (order_status_id) references order_status (id),
 foreign key (goods_id) references goods (id)
);
