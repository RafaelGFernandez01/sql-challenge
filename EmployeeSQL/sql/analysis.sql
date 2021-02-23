-- 1)
--List the following details of each employee: employee number, last name, first name, sex, and salary.
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

--2)
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	E."FisrtName" as "first name",
	E."LastName" as "last name",
	E."HiredDate" as "hired date"
FROM "Employees" E
WHERE E."HiredDate" LIKE '%/1986'
;

--3)
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

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
		