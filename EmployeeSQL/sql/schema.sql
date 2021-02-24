CREATE TABLE "Department" (
    "DepartmentID" VARCHAR   NOT NULL,
    "Name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "DepartmentID"
     )
);

CREATE TABLE "DepartmentEmployee" (
    "EmployeeID" int   NOT NULL,
    "DepartmentID" VARCHAR   NOT NULL,
    CONSTRAINT "pk_DepartmentEmployee" PRIMARY KEY (
        "EmployeeID","DepartmentID"
     )
);

CREATE TABLE "Title" (
    "TitleID" VARCHAR   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "TitleID"
     )
);

CREATE TABLE "Employees" (
    "EmployeeID" int   NOT NULL,
    "TitleID" VARCHAR   NOT NULL,
    "BirthDate" date   NOT NULL,
    "FisrtName" VARCHAR   NOT NULL,
    "LastName" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "HiredDate" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "EmployeeID"
     )
);

CREATE TABLE "Salary" (
    "EmployeeID" int   NOT NULL,
    "Salary" int   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "EmployeeID"
     )
);

CREATE TABLE "DepartmentManager" (
    "DepartmentID" VARCHAR   NOT NULL,
    "EmployeeID" int   NOT NULL,
    CONSTRAINT "pk_DepartmentManager" PRIMARY KEY (
        "DepartmentID","EmployeeID"
     )
);

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_DepartmentID" FOREIGN KEY("DepartmentID")
REFERENCES "Department" ("DepartmentID");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_TitleID" FOREIGN KEY("TitleID")
REFERENCES "Title" ("TitleID");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_DepartmentID" FOREIGN KEY("DepartmentID")
REFERENCES "Department" ("DepartmentID");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

