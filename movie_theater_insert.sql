INSERT into customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Beyonce',
	'Carter',
	'444 Blue Ivy Way, Houston, TX 77001',
	'1111-2222-3333-4444'
);

INSERT into inventory(
	upc,
	product_quantity
)VALUES(
	1,
	100
);

INSERT into  movie(
	movie_id,
	movie_name
)VALUES(
	1,
	'Arrival'
);

INSERT into tickets(
	ticket_id,
	movie_id,
	upc
)VALUES(
	1,
	1,
	1
);

INSERT into inventory(
	upc,
	product_quantity
)VALUES(
	2,
	20
);

INSERT into concessions(
	item_id,
	prod_name,
	upc
)VALUES(
	1,
	'crunch bites',
	2
);

INSERT into product( 
	product_id,
	total_cost,
	upc
)VALUES( 
	1,
	15.00,
	1
);

INSERT into product( 
	product_id,
	total_cost,
	upc
)VALUES( 
	2,
	7.00,
	2
);


INSERT into cart( 
	cart_id,
	customer_id, 
	product_id
)VALUES(
	1,
	1,
	1
);
INSERT into cart( 
	cart_id,
	customer_id, 
	product_id
)VALUES(
	2,
	1,
	2
);

select * from cart;