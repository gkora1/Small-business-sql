create database if not exists small_business;
use small_business;

create table Customer
(customerNo mediumint not null auto_increment,
fname varcharacter(25) not null,
lname varchar(35) not null,
address varchar(50),
city varchar(35),
state char(2),
zipcode char(5) default '45469',
primary key (customerNo)
);

create table Product
(productCode mediumint not null auto_increment,
product varchar(50),
description text,
primary key (productCode)
);

create table orders
(orderNo mediumint not null auto_increment,
customerNo mediumint not null,
productCode mediumint not null,
quantity smallint,
order_date date not null,
primary key (orderNo),
foreign key(customerNo) references Customer(customerNo),
foreign key(productCode) references Product(productCode)
);

create table feature
(featurecode mediumint not null check (featureCode <= 100),
feature varchar(50),
primary key (featureCode)
);

create table product_feature
(productCode mediumint not null,
featureCode mediumint not null,
primary key (productCode, featureCode),
foreign key (productCode) references Product(ProductCode),
foreign key (featureCode) references Feature(featureCode)
);