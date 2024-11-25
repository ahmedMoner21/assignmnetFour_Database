CREATE TABLE governments (

	id int AUTO_INCREMENT not null,
    name varchar(30) not null,
    PRIMARY KEY(id)


);



CREATE table stores(

	store_id int not null AUTO_INCREMENT,
    store_name varchar(20) not null UNIQUE,
    store_address text not null UNIQUE,
    government_id int not null,
    PRIMARY KEY(store_id),
    FOREIGN KEY(government_id) REFERENCES governments(id)



);



CREATE table products(

	product_id int not null AUTO_INCREMENT,
    product_name varchar(20) not null,
    product_code int not null UNIQUE,
    product_price int not null,
    product_description text not null,
    supplier_id int not null,
    PRIMARY KEY(product_id),
    FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id)



);



CREATE table suppliers(

	supplier_id int not null AUTO_INCREMENT,
    supplier_name varchar(20) not null,
    supplier_phone varchar(20) not null UNIQUE,
    supplier_email varchar(30) not null UNIQUE,
    breif_data text not null,
    PRIMARY KEY(supplier_id)

);