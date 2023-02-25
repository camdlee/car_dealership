INSERT INTO Customer(
    first_name,
    last_name,
    customer_address,
    phone_num
) VALUES (
    'dylan',
    'katina',
    '1234 coding temple dr',
    '555-555-5555'
),
(
    'kim',
    'kardashian',
    '1235 coding temple dr',
    '555-555-5556'
);

SELECT *
FROM customer;

INSERT INTO salesperson(
    first_name,
    last_name
) VALUES (
    'christian',
    'askew'
),
(
    'kris',
    'jenner'
);

SELECT *
FROM salesperson;

INSERT INTO car(
    car_make,
    car_model,
    car_year
) VALUES (
    'honda',
    'civc',
    '2022'
),
(
    'tesla',
    'y',
    '2021'
);

SELECT *
FROM car;

INSERT INTO invoice (
    salesperson_id,
    customer_id,
    car_id,
    invoice_date,
    invoice_amount
) VALUES (
    '1',
    '1',
    '1',
    CURRENT_TIMESTAMP,
    50000
),
(
    '2',
    '2',
    '2',
    CURRENT_TIMESTAMP,
    80000
);

SELECT *
FROM invoice;

INSERT INTO mechanic (
    first_name,
    last_name
) VALUES (
    'devin',
    'volk'
),
(
    'anifa',
    'chishungu'
);

SELECT *
FROM mechanic;

INSERT INTO service_ticket (
    customer_id,
    car_id,
    service_ticket_amount,
    services_rendered,
    service_time
) VALUES (
    '1',
    '1',
    700,
    'changed tires, oil, wiper fluid, fixed windshield',
    CURRENT_TIMESTAMP
),
(
    '2',
    '2',
    1000,
    'fixed the headlights',
    CURRENT_TIMESTAMP
);

SELECT *
FROM service_ticket;

INSERT INTO service_history (
    mechanic_id,
    service_ticket_id
) VALUES (
    '1',
    '1'
),
(
    '2',
    '2'
);

SELECT *
FROM service_history;