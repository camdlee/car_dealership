CREATE TABLE salesperson (
  salesperson_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(100),
  phone_num VARCHAR(15)
);

CREATE TABLE invoice (
  invoice_id SERIAL PRIMARY KEY,
  salesperson_id INTEGER,
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  car_id INTEGER,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  invoice_date TIMESTAMP,
  invoice_amount INTEGER
);

CREATE TABLE Car (
  car_id SERIAL PRIMARY KEY,
  vehicle_id_num VARCHAR(50),
  car_make VARCHAR(50),
  car_model VARCHAR(50),
  car_year INTEGER
);

CREATE TABLE service_ticket (
  service_ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  car_id INTEGER,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  service_ticket_amount VARCHAR(50),
  services_rendered VARCHAR(100),
  service_time TIMESTAMP
);

CREATE TABLE service_history (
  service_history_id SERIAL PRIMARY KEY,
  mechanic_id INTEGER,
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
  service_performed VARCHAR(50),
  service_ticket_id INTEGER,
  FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

CREATE TABLE mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);



----------- CHANGES TO TABLES -------------

ALTER TABLE customer
RENAME COLUMN address to customer_address;

ALTER TABLE car
DROP vehicle_id_num;

-- CHANGED TO DECIMAL(19,4) FOR PRECISION
ALTER TABLE invoice
ALTER COLUMN invoice_amount TYPE DECIMAL(19,4);

-- ALTER TABLE service_ticket
-- ALTER COLUMN service_ticket_amount TYPE DECIMAL(19,4);
-- ABOVE WOULDN'T WORK PROPERLY SO I DID BELOW
ALTER TABLE service_ticket
DROP service_ticket_amount;

ALTER TABLE service_ticket
ADD service_ticket_amount DECIMAL(19,4);

ALTER TABLE service_history
DROP service_performed;
---since ticket already has services rendered