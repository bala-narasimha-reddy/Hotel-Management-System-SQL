-- Customers
INSERT INTO customers VALUES
(1,'Ravi Kumar','9876543210','Hyderabad'),
(2,'Anjali Sharma','9123456789','Bangalore'),
(3,'Suresh Reddy','9988776655','Chennai');

-- Rooms
INSERT INTO rooms VALUES
(1,'Standard',2000,'Available'),
(2,'Deluxe',3500,'Available'),
(3,'Suite',6000,'Occupied');

-- Departments
INSERT INTO departments VALUES
(1,'Reception'),
(2,'Housekeeping'),
(3,'Management');

-- Employees
INSERT INTO employees VALUES
(1,'Akhil','Manager',50000,3),
(2,'Meena','Receptionist',20000,1),
(3,'Ramesh','Cleaner',15000,2);

-- Bookings
INSERT INTO bookings VALUES
(1,1,1,'2025-01-10','2025-01-12'),
(2,2,2,'2025-01-15','2025-01-18'),
(3,1,2,'2025-01-20','2025-01-22');

-- Payments
INSERT INTO payments VALUES
(1,1,4000,'2025-01-12','UPI'),
(2,2,10500,'2025-01-18','Card'),
(3,3,7000,'2025-01-22','Cash');
