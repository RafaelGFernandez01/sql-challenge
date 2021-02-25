-- 1)
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	E."EmployeeID" as "employee number",
	E."LastName" as "last name",
	E."FisrtName" as "first name",
	E."Sex" as "sex",
	S."Salary" as "salary"
FROM "Employees" E
    INNER JOIN "Salary" S
    	ON E."EmployeeID" = S."EmployeeID"
;

-- 2)
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	E."FisrtName" as "first name",
	E."LastName" as "last name",
	E."HiredDate" as "hired date"
FROM "Employees" E
WHERE E."HiredDate" LIKE '%/1986'
;

-- 3)
-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT 
	D."DepartmentID" as "department number",
	D."Name" as "department name",
	E."EmployeeID" as "manager employee number",
	E."LastName" as "last name",
	E."FisrtName" as "first name"
FROM
	"DepartmentManager" DM
	INNER JOIN "Department" D
		ON DM."DepartmentID" = D."DepartmentID"
	INNER JOIN "Employees" E
		ON E."EmployeeID" = DM."EmployeeID"
;

-- 4)
-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT 
	E."EmployeeID" as "employee number",
	E."LastName" as "last name",
	E."FisrtName" as "first name",
	D."Name" as "department name"
FROM 
	"DepartmentEmployee" DE
	INNER JOIN "Department" D
		ON DE."DepartmentID" = D."DepartmentID"
	INNER JOIN "Employees" E
		ON E."EmployeeID" = DE."EmployeeID"
;

-- 5)
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	E."FisrtName" as "first name",
	E."LastName" as "last name",
	E."Sex" as "sex"
FROM "Employees" E
WHERE
	E."FisrtName" LIKE 'Hercules'
AND E."LastName" LIKE 'B%'
;

-- 6)
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
 	E."EmployeeID" as "employee number",
 	E."LastName" as "last name",
 	E."FisrtName" as "first name",
 	D."Name" as "department name"
FROM 
	"DepartmentEmployee" DE
	INNER JOIN "Department" D
		ON DE."DepartmentID" = D."DepartmentID"
	INNER JOIN "Employees" E
		ON E."EmployeeID" = DE."EmployeeID"
WHERE D."Name" = 'Sales'	
;

-- 7)
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
 	E."EmployeeID" as "employee number",
 	E."LastName" as "last name",
 	E."FisrtName" as "first name",
 	D."Name" as "department name"
FROM 
	"DepartmentEmployee" DE
	INNER JOIN "Department" D
		ON DE."DepartmentID" = D."DepartmentID"
	INNER JOIN "Employees" E
		ON E."EmployeeID" = DE."EmployeeID"
WHERE D."Name" = 'Sales' OR D."Name" = 'Development'
;

-- 8)
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name how many employees share each last name

SELECT 
	E."LastName" as "last name",
	COUNT (E."EmployeeID")
FROM 
	"Employees" E
GROUP BY 
 	E."LastName" 
ORDER BY 
	E."LastName" DESC
;



	
