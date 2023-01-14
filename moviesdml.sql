INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age
)VALUES(
	1,
	'Calvin',
	'Johnson',
	'34'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age
)VALUES(
    2,
	'Bryan',
	'Johnson',
	'36'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	age
)VALUES(
    3,
	'Arayna',
	'Johnson',
	'31'
);

INSERT INTO movies(
    movie_title,
    theater,
    seat_number,
    customer_id
)VALUES(
    'Batman',
	1,
	1,
	1
);

INSERT INTO movies(
    movie_title,
    theater,
    seat_number,
    customer_id
)VALUES(
    'Superman',
	2,
	1,
	2
);

INSERT INTO movies(
    movie_title,
    theater,
    seat_number,
    customer_id
)VALUES(
    'Nemo',
	3,
	1,
	3
);

INSERT INTO concessions(
    product_id,
    Product_name,
    image_url,
    price 
    )
    VALUES(
        'L1',
        'popcorn',
        'image.png',
        5.99
    );

INSERT INTO concessions(
    product_id,
    Product_name,
    image_url,
    price 
    )
    VALUES(
        'L2',
        'soda',
        'https://www.caligalaxy.com/wp-content/uploads/2023/01/91iFMPtXsIL._SL1500_-600x600.jpg',
        1.99
    );    

INSERT INTO concessions(
    product_id,
    Product_name,
    image_url,
    price 
    )
    VALUES(
        'L3',
        'candy',
        'https://m.media-amazon.com/images/I/91H1K4ZibAL._SX679_.jpg',
        2.99
    );  

INSERT INTO tickets(
    sale_id,
    movie_title
)
VALUES(
    '1',
    'Batman'
);

INSERT INTO tickets(
    sale_id,
    movie_title
)
VALUES(
    '3',
    'Superman'
);

INSERT INTO tickets(
    sale_id,
    movie_title
)
VALUES(
    '2',
    'Nemo'
);

INSERT INTO tickets(
    sale_id,
    movie_title
)
VALUES(
    '4',
    'Nemo'
);

INSERT INTO tickets(
    sale_id,
    movie_title
)
VALUES(
    '5',
    'Batman'
);