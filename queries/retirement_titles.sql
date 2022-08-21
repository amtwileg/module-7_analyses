SELECT
    emp.emp_no, emp.first_name, emp.last_name,
    t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees emp
INNER JOIN titles t on emp.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp.emp_no;
