SELECT * FROM salaries
ORDER BY to_date DESC;

SELECT e.emp_no, e.first_name, e.last_name, e.gender, de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

-- List of managers per department
SELECT dm.dept_no,
		d.dept_name,
		dm.emp_no,
		ce.last_name,
		ce.first_name,
		dm.from_date,
		dm.to_date
--INTO manager_info
FROM dept_manager AS dm
	INNER JOIN departments AS d
		ON (dm.dept_no = d.dept_no)
	INNER JOIN current_emp AS ce
		ON (dm.emp_no = ce.emp_no);
		
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date = ('9999-01-01');

--Create a query that will return only the information relevant to the Sales team. The requested list includes:
--
--Employee numbers
--Employee first name
--Employee last name
--Employee department name

--Sales Team information
SELECT ri.emp_no, ri.first_name, ri.last_name, 
		di.dept_name
FROM retirement_info as ri
	LEFT JOIN dept_info as di
	ON (ri.emp_no = di.emp_no)
WHERE di.dept_name = 'Sales';

--Sales and Dev Team Info
SELECT ri.emp_no,
		ri.first_name,
		ri.last_name,
		di.dept_name
FROM retirement_info as ri
		LEFT JOIN dept_info as di
		ON (ri.emp_no = di.emp_no)
WHERE di.dept_name IN ('Sales', 'Development');