CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	loyalty_member BOOLEAN DEFAULT FALSE
);


SELECT *
FROM customer;



CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,
	theater_name VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL
);


SELECT *
FROM theater;


CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50) NOT NULL,
	run_time VARCHAR(50) NOT NULL,
	rating VARCHAR(50) NOT NULL,
	theater_id INTEGER NOT NULL,
	FOREIGN KEY (theater_id) REFERENCES theater(theater_id)
);

SELECT *
FROM movies;


CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	price VARCHAR(50) NOT NULL,
	purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

SELECT *
FROM ticket;





