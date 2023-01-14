CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age INTEGER
);

-- CREATE TYPE seat_number AS ENUM (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20, b1,b2,b3,b4,b5,b6,b7,b8,b9,b10b,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20);
CREATE TABLE movies(
    movie_title VARCHAR(100) Primary Key,
    showtime TIMESTAMP with Time Zone DEFAULT CURRENT_Timestamp,
    theater INTEGER,
    seat_number INTEGER,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE tickets(
    sale_id SERIAL Primary KEY,
    showtime TIMESTAMP NOT NULL, 
    FOREIGN KEY(showtime) REFERENCES movies(showtime), 
    movie_title VARCHAR NOT NULL,
    FOREIGN Key(movie_title) REFERENCES movies(movie_title)
   );
ALTER Table tickets
ALTER COLUMN showtime
Drop NOT NULL;
ALTER Table movies
ADD UNIQUE(movie_title)
ADD UNIQUE (showtime)
CREATE TABLE concessions(
    product_id VARCHAR(100) Primary Key,
    Product_name VARCHAR(100),
    image_url VARCHAR,
    price NUMERIC(10,2)
    
);