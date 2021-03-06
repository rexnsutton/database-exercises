USE employees_db;
-- # Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
 SELECT *
 FROM employees
 WHERE first_name IN ('Irena', 'Maya', 'Vidya')
 AND gender = 'M'
 ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE hire_date LIKE ('199%');

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';





SELECT *
FROM employees
WHERE last_name LIKE '%q%';





-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';




-- Add a condition to the previous query to find everybody with those names who is also male
SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';



-- Find all employees whose last name starts or ends with 'E'
SELECT CONCAT(first_name, " ", last_name)
AS "FIRST+LAST"
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';



-- Find all employees hired in the 90s and born on Christmas
SELECT *, DATEDIFF(CURDATE(), hire_date)
AS "days working for company"
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;


-- Find all employees with a 'q' in their last name but not 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

