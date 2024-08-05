create table if not exists customers(
    customerid integer primary key,
    name varchar(255),
    phone varchar(255),
    email varchar(255),
    address varchar(255),
    region varchar(255),
    postalzip varchar(255),
    country varchar(255),
    createdat timestamp,
    updatedat timestamp
)
;


create table if not exists orderitems(
    orderitemsid integer primary key,
    orderid integer,
    productid integer
)
;


create table if not exists orders(
    orderid integer primary key,
    customerid integer,
    salesperson varchar(255),
    orderplacedtimestamp timestamp,
    orderstatus varchar(255),
    updatedat timestamp
)
;


create table if not exists products(
    productid integer primary key,
    product varchar(255),
    price double precision,
    department varchar(255),
    createdat timestamp,
    updatedat timestamp
)
;
