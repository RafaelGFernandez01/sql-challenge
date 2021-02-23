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