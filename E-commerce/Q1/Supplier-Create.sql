Create Database order_directory ;

CREATE TABLE order_directory.supplier(
SUPP_ID int primary KEY ,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50),
SUPP_PHONE varchar(10) NOT NULL
);