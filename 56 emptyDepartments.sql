CREATE PROCEDURE emptyDepartments()
BEGIN
	SELECT departments.dep_name AS dep_name
    FROM departments
    WHERE NOT EXISTS
    (SELECT department
    FROM employees 
    WHERE employees.department = departments.id)

    ORDER BY departments.id;
END