-- Total Revenue
SELECT SUM(amount) AS total_revenue FROM payments;

-- Most Booked Room Type
SELECT r.room_type, COUNT(*) AS total_bookings
FROM rooms r
JOIN bookings b ON r.room_id = b.room_id
GROUP BY r.room_type
ORDER BY total_bookings DESC;

-- Repeat Customers
SELECT c.customer_name, COUNT(b.booking_id) AS bookings
FROM customers c
JOIN bookings b ON c.customer_id = b.customer_id
GROUP BY c.customer_name
HAVING COUNT(b.booking_id) > 1;

-- Average Salary by Department
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Revenue by Payment Mode
SELECT payment_mode, SUM(amount) AS revenue
FROM payments
GROUP BY payment_mode;

-- View
CREATE VIEW booking_details AS
SELECT c.customer_name, r.room_type, b.check_in, b.check_out
FROM bookings b
JOIN customers c ON b.customer_id = c.customer_id
JOIN rooms r ON b.room_id = r.room_id;
