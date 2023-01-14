CREATE TABLE car(
	car_id SERIAL PRIMARY KEY, 
	car_make VARCHAR(100),
	car_model VARCHAR(100),
	car_year VARCHAR(45)
);

CREATE TABLE customer(
    customer_id SERIAL Primary Key,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    car_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id)
);

CREATE TABLE salesperson(
    salesperson_id SERIAL Primary Key,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL Primary Key,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES salesperson(customer_id),
    car_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);
ALTER TABLE invoice
Add amount Numeric(10,2);


CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(45),
	last_name VARCHAR(45)
	);

CREATE TABLE services(
    service_history_id SERIAL PRIMARY KEY,
    service_ticket SERIAL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    mechanic_id INTEGER NOT NULL,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
    ); 

INSERT INTO car(
	car_make,
	car_model,
	car_year 
)VALUES(
	'Ford',
	'Explorer',
	'2022'
);

INSERT INTO car(
	car_make,
	car_model,
	car_year 
)VALUES(
	'Dodge',
	'Charger',
	'2022'
);

INSERT INTO car(
	car_make,
	car_model,
	car_year 
)VALUES(
	'Chevy',
	'Impala',
	'1964'
);

INSERT INTO car(
	car_make,
	car_model,
	car_year 
)VALUES(
	'Chevy',
	'Impala',
	'1964'
);
SELECT*
FROM car

INSERT INTO customer(   
    first_name ,
    last_name ,
    car_id
)VALUES(
    'Calvin',
    'Johnson',
    1
);
INSERT INTO customer(   
    first_name ,
    last_name ,
    car_id
)VALUES(
    'Arayna',
    'Johnson',
    2
);
INSERT INTO customer(   
    first_name ,
    last_name ,
    car_id
)VALUES(
    'Bo',
    'Jackson',
    3
);

INSERT INTO salesperson(
    first_name ,
    last_name,
    customer_id
)Values(
    'Todd',
    'France',
    1
);
INSERT INTO salesperson(
    first_name ,
    last_name,
    customer_id
)Values(
    'Brett',
    'Hart',
    2
);

Insert INTO invoice(
    invoice_id,
    customer_id,
    car_id,
    salesperson_id,
    amount
)Values(
    21,
    1,
    2,
    1,
    500.99
);
Insert INTO invoice(
    invoice_id,
    customer_id,
    car_id,
    salesperson_id
)Values(
    32,
    1,
    2,
    1
);
Insert INTO invoice(
    invoice_id,
    customer_id,
    car_id,
    salesperson_id,
)Values(
    44,
    2,
    1,
    2,
);

UPDATE invoice
SET amount=200+random()*400::int;
SELECT*
FROM invoice

INSERT INTO mechanic(
	mechanic_id, 
	first_name,
	last_name
)Values(
    1,
    'John',
    'Nixon'
);
INSERT INTO mechanic(
	mechanic_id, 
	first_name,
	last_name
)Values(
    2,
    'Billy',
    'Bob'
);

INSERT INTO services(
    service_history_id,
    service_ticket,
    car_id,
    mechanic_id
)Values(
    12,
    1,
    1,
    1
    ); 

INSERT INTO services(
    service_history_id,
    service_ticket,
    car_id,
    mechanic_id
)Values(
    13,
    2,
    2,
    1
    ); 

INSERT INTO services(
    service_history_id,
    service_ticket,
    car_id,
    mechanic_id
)Values(
    14,
    3,
    3,
    2
    ); 

CREATE OR REPLACE FUNCTION add_car(_car_id INTEGER, 
	car_make VARCHAR(100),
	car_model VARCHAR(100),
	car_year VARCHAR(45))
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO car( car_make, car_model, car_year)
	VALUES( car_make, car_model, car_year);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car (4,'Ford','Fusion','2019')
SELECT add_car (6,'Mercedes', 'Benz', '2022')


SELECT *
FROM car

