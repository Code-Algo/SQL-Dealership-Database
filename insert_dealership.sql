INSERT INTO customer (customer_name, customer_phone, customer_email) VALUES
('Steve','9258176278', 'steve@gmail.com'),
('John', '9995566788', 'john@hotmail.com'),
('Jack', '5167834506', 'always@jillshouse.com'),
('Jennifer', '7208976645', 'jennyjen@yahoo.com'),
('Clara', '6789394567', 'clara89@gmail.com');

INSERT INTO salesPerson (salesPerson_name, salesPerson_phone) VALUES
('Steve', '4985674567'),
('John', '2226785647'),
('Jack', '4986746789'),
('Geoffery', '7658904657'),
('Johnson', '4557698094');

INSERT INTO cars (quantity, salesPerson_id) VALUES
(5, 1),
(8, 2),
(20, 3),
(15, 4),
(17, 5);

INSERT INTO car (car_name, car_description, car_price, customer_id, cars_id, invoice_id, records_id) VALUES
('Land Cruiser', 'Large SUV', 50000.00, 1, 1, 1, 1),
('Corvette', 'Sports Coupe', 90000.00, 2, 2, 2, 2),
('M4', 'Performance Sedan', 80000.00, 3, 3, 3, 3),
('Sadona', 'Economy Sedan', 32000.00, 4, 4, 4, 4),
('Elontra', 'Sedan', 38000.00, 5, 5, 5, 5);

INSERT INTO records (car_id) VALUES
(17),
(18),
(19),
(20),
(21);

INSERT INTO invoice (salesPerson_id, customer_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO parts (quantity) VALUES
(43),
(55),
(29),
(32),
(46);

INSERT INTO part (part_name_, part_description, part_price, parts_id) VALUES
('Spark Plug', 'Small thing that helps car start', 10.99, 1),
('Battery', 'Gives car electricity', 141.59, 2),
('Radiator', 'Keeps car cool', 489.50, 3),
('Air Filter', 'Stops particles from entering engine', 29.99, 4),
('Fuel Tank', 'Stores Fuel', 539.27, 5);

INSERT INTO mechanic (mechanic_name) VALUES
('Chip'),
('Rusty'),
('Scooter'),
('Skeeter'),
('Maynard');

INSERT INTO ticket (car_id, customer_id) VALUES
(17,1),
(18,2),
(19,3),
(20,4),
(21,5);

INSERT INTO "service" (ticket_id, records_id, mechanic_id, part_id ) VALUES
(1, 1, 1, 6),
(2, 2, 2, 7),
(3, 3, 3, 8),
(4, 4, 4, 9),
(5, 5, 5, 10);
