 use employees;
DELIMITER $$
CREATE PROCEDURE filter_salary4 (IN p_min_salary FLOAT, IN p_max_salary FLOAT)
BEGIN
drop table temp3;
CREATE  table temp3 as (
SELECT
    employees.gender, departments.dept_name, AVG(salaries.salary) as avg_salary
FROM
    salaries
        JOIN
    employees ON salaries.emp_no = employees.emp_no
        JOIN
    dept_emp ON dept_emp.emp_no = employees.emp_no
        JOIN
    departments ON departments.dept_no = dept_emp.dept_no
    WHERE salaries.salary BETWEEN p_min_salary AND p_max_salary
GROUP BY departments.dept_no, employees.gender);
END$$
DELIMITER ;

CALL filter_salary4(30000, 100000);
select * from temp3;



/*--Inserting Records from Stored procedure to Temporary Table
INSERT INTO temp
EXEC SelectStoredProcedureFirstExample
-- Selecting Records from Temporary Table
SELECT * FROM #Employee */


CREATE TABLE temp(
	gender char (3) NULL,
	dept_name char(255) NULL,
	avg_salary float NULL
);


INSERT INTO #temp
exec filter_salary
go;


-- Selecting Records from Temporary Table
SELECT * FROM #Employee


















