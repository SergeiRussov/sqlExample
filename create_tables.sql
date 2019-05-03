create table contacts
(
 id int not null,
 address varchar,
 phone numeric,
 email varchar,
 primary key (id)
);

create table roles
(
 id int not null,
 name varchar not null,
 primary key (id)
);

create table categories
(
 id int not null,
 name varchar,
 primary key (id)
);

create table order_status
(
 id int not null,
 name varchar,
 primary key (id)
);

create table coupons
(
 id int not null,
 discount int not null,
 primary key (id)
);

create table goods
(
 id int not null,
 name varchar,
 price int,
 category_id int not null,
 primary key (id),
 foreign key (category_id) references categories (id)
);

create table orders
(
 id int not null,
 order_date date,
 total_price int,
 status_id int,
 coupon_id int,
 primary key (id),
 foreign key (status_id) references order_status (id),
 foreign key (coupon_id) references coupons (id)
);

create table goods_orders
(
 order_id int,
 good_id int,
 foreign key (good_id) references goods (id),
 foreign key (order_id) references orders (id)
);

create table customers
(
 id int not null,
 name varchar,
 contact_id int,
 role_id int,
 primary key (id),
 foreign key (contact_id) references contacts (id),
 foreign key (role_id) references roles (id)
);

create table customers_orders
(
 customer_id int,
 order_id int,
 foreign key (customer_id) references customers (id),
 foreign key (order_id) references orders (id)
);
 