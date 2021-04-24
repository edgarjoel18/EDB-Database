USE EDBDatabase;
DELIMITER $$

-- SELECT * FROM Employee;
-- INSERT INTO Employee (name, ssn, dob, house_number, street, zip_code, state, company_id, department, seniority, permission) VALUES ("TestEm", "555-55", "10/10/10", 444, "NiceSt", "9455", 'CA', 1, 1, 1, 1);

-- Creating a trigger for everytime an employee is entered they are entered in the EmployeeToProject with an assigned Project
CREATE TRIGGER giveEmployeeProject AFTER INSERT ON Employee
FOR EACH ROW
	BEGIN
		DECLARE projectId INT;
		SET projectId = (SELECT project_id FROM Project WHERE project_id = 1);
        INSERT INTO EmployeeToProject(employee_id, project_id) VALUES(1,projectId);
	END$$
DELIMITER ;


-- A function to return the very first project of XCompany 
-- CREATE FUNCTION oldestEmployee(year TIMESTAMP)
-- RETURNS INT
-- DETERMINISTIC
--     SET oldestAge = (SELECT max(dob.length) from Employee);
--     RETURN oldestAge;
-- END $$

-- DELIMITER ;
--  