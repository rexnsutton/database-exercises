use employees;
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'department manager'
FROM employees as e
JOIN dept_manager as dm ON e.emp_no = dm.emp_no
# JOIN dept_emp as de
#   ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate()
ORDER BY d.dept_name;
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT *
FROM titles
JOIN dept_emp de on titles.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no;
