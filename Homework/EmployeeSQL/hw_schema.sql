--List the following details of each employee: employee number, last name, first name, 
--sex, and salary.

-- Select
-- 	"Employees".emp_no, last_name, first_name, sex, salary
-- From
-- 	"Salaries"
-- INNER JOIN "Employees" ON "Employees".emp_no="Salaries".emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

-- SELECT
-- 	first_name,last_name,hire_date
-- FROM
-- 	"Employees"
-- WHERE
-- 	EXTRACT (YEAR FROM hire_date) = 1986
--;

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

-- SELECT
-- 	"Departments".dept_no,dept_name,"Dept_manager".emp_no,last_name,first_name
-- FROM
-- 	"Departments"
-- INNER JOIN "Dept_manager" ON "Departments".dept_no="Dept_manager".dept_no
-- INNER JOIN "Employees" ON "Employees".emp_no="Dept_manager".emp_no
-- ;

--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.

-- SELECT
-- 	"Employees".emp_no,last_name,first_name,dept_name
-- FROM
-- 	"Departments"
-- INNER JOIN "Dept_emp" ON "Dept_emp".dept_no="Departments".dept_no
-- INNER JOIN "Employees" ON "Employees".emp_no="Dept_emp".emp_no
-- ;

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."

-- SELECT
-- 	first_name,last_name,sex
-- FROM
-- 	"Employees"
-- WHERE 1=1
-- AND	first_name='Hercules'
-- AND	last_name LIKE 'B%'
-- ;

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

-- SELECT
-- 	"Employees".emp_no,last_name,first_name,dept_name
-- FROM
-- 	"Employees"
-- INNER JOIN "Dept_emp" ON "Employees".emp_no="Dept_emp".emp_no
-- INNER JOIN "Departments" ON "Departments".dept_no="Dept_emp".dept_no
-- WHERE
-- 	dept_name='Sales'
-- ;

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

-- SELECT
-- 	"Employees".emp_no,last_name,first_name,dept_name
-- FROM
-- 	"Employees"
-- INNER JOIN "Dept_emp" ON "Employees".emp_no="Dept_emp".emp_no
-- INNER JOIN "Departments" ON "Departments".dept_no="Dept_emp".dept_no
-- WHERE
-- 	dept_name='Sales' OR dept_name='Development'
-- ;


--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

-- SELECT
-- 	last_name, COUNT(last_name)
-- FROM
-- 	"Employees"
-- GROUP BY 
-- 	last_name
-- ORDER BY
-- 	count DESC









