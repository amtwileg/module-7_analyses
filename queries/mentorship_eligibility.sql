SELECT
    DISTINCT ON(employees.emp_no) employees.emp_no, first_name, last_name, birth_date,
                                  dept_emp.from_date, dept_emp.to_date,
                                  t.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN titles t ON employees.emp_no = t.emp_no
WHERE
    t.to_date = '9999-01-01'
    AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY employees.emp_no;
