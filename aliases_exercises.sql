USE employees_db;
SELECT CONCAT(last_name, ' ', first_name) AS full_name, birth_date
FROM employees
LIMIT 10;