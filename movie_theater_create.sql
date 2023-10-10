create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table inventory(
	upc SERIAL primary key,
	product_quantity INTEGER
);

create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100)
);

create table tickets(
	ticket_id SERIAL primary key, 
	movie_id INTEGER not null,
	upc INTEGER not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(upc) references inventory(upc)
);

create table concessions(
	item_id SERIAL primary key, 
	prod_name VARCHAR(100),
	upc INTEGER not null,
	foreign key(upc) references inventory(upc)
);

create table product( 
	product_id SERIAL primary key, 
	total_cost NUMERIC(10,2),
	upc INTEGER not null,
	foreign key(upc) references inventory(upc)
);

create table cart( 
	cart_id SERIAL primary key, 
	customer_id INTEGER not null, 
	product_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(product_id) references product(product_id)
);