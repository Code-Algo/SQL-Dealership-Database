DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_phone VARCHAR(13),
    customer_email VARCHAR(100)
);

DROP TABLE IF EXISTS salesPerson CASCADE;
CREATE TABLE salesPerson(
    salesPerson_id SERIAL PRIMARY KEY,
    salesPerson_name VARCHAR(100),
    salesPerson_phone VARCHAR(13)
);

DROP TABLE IF EXISTS cars CASCADE;
CREATE TABLE cars(
    cars_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    salesPerson_id INTEGER NOT NULL,
    FOREIGN KEY (salesPerson_id) REFERENCES salesPerson(salesPerson_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_name VARCHAR(50),
    car_description TEXT,
    car_price decimal(10,2),
    customer_id INTEGER NOT NULL,
    cars_id INTEGER NOT NULL,
    records_id INTEGER NOT NULL,
    invoice_id INTEGER NOT NULL,
    FOREIGN KEY (records_id) REFERENCES records(records_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (cars_id) REFERENCES cars(cars_id) ON DELETE CASCADE,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesPerson_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (salesPerson_id) REFERENCES salesPerson(salesPerson_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS "service" CASCADE;
CREATE TABLE "service" (
    service_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    records_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (records_id) REFERENCES records(records_id) ON DELETE CASCADE,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
    FOREIGN KEY (part_id) REFERENCES part(part_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS parts CASCADE;
CREATE TABLE parts(
    parts_id SERIAL PRIMARY KEY,
    quantity INTEGER
);

DROP TABLE IF EXISTS part CASCADE;
CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    part_name_ VARCHAR(100),
    part_description TEXT,
    part_price decimal(10,2),
    parts_id INTEGER NOT NULL,
    FOREIGN KEY (parts_id) REFERENCES parts(parts_id) ON DELETE CASCADE

);

DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    mechanic_name VARCHAR(100)
);

DROP TABLE IF EXISTS records CASCADE;
CREATE TABLE records(
    records_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE
);