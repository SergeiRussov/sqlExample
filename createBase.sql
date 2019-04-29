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

create table category
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

create table coupon
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
 foreign key (category_id) references category (id)
);

create table orders
(
 id int not null,
 goods_id int,
 order_date date,
 total_price int,
 status_id int,
 coupon_id int,
 primary key (id),
 foreign key (status_id) references order_status (id),
 foreign key (coupon_id) references coupon (id)
);

create table goods_orders
(
 goods_id int unique,
 order_id int unique,
 foreign key (goods_id) references goods (id),
 foreign key (order_id) references orders (id)
);

alter table orders add constraint goods_ordersfk foreign key (goods_id) references goods_orders (goods_id);

create table histories
(
 id int not null,
 order_id int,
 primary key (id),
 foreign key (order_id) references orders (id)
);

create table customers
(
 id int not null,
 name varchar,
 phone numeric,
 email varchar,
 contact_id int,
 history_id int,
 role_id int,
 primary key (id),
 foreign key (contact_id) references contacts (id),
 foreign key (history_id) references histories (id),
 foreign key (role_id) references roles (id)
);
 