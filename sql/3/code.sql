-- TASK 1
SELECT department, ROUND(AVG(salary), 2)
FROM employees
GROUP BY department
ORDER BY 2 DESC;

-- TASK 2
UPDATE employees SET salary = salary * 1.05 WHERE CAST((julianday('2024-12-20') - julianday(hire_date)) / 365.25 AS INTEGER) >= 2;

SELECT name, salary AS new_salary, ROUND(salary - (salary / 1.05), 0) AS raise_amount FROM employees WHERE CAST((julianday('2024-12-20') - julianday(hire_date)) / 365.25 AS INTEGER) >= 2;

-- TASK 3
INSERT INTO employees (id, name, department, position, hire_date, salary) VALUES (6, 'Eva Green', 'IT', 'Manager', '2024-12-20', 90000.00);

SELECT * FROM employees WHERE department = 'IT';

-- TASK 4
SELECT 
  department, 
  SUM(salary) AS total_salary,
  ROUND((SUM(salary) * 100.0 / (SELECT SUM(salary) FROM employees)), 2) AS percentage
FROM employees
GROUP BY department
ORDER BY total_salary DESC;
