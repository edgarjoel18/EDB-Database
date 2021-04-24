USE EDBDatabase; 
-- Script name: inserts.sql
-- Author:      Edgar Catalan
-- Purpose:     insert sample data to test the integrity of this database system


-- Inserting a Company 
INSERT INTO Company (name, company_type, date_using_EDB) VALUES ("XCompany","Software", '2021-04-19 03:14:07');
INSERT INTO Company(name, company_type, date_using_EDB) VALUES("OtherCompany", "Restaurant", '2021-4-23 03:14:08');
INSERT INTO Company(name, company_type, date_using_EDB) VALUES("OtherCompany2", "Cable", '2021-4-23 03:14:08');
-- SELECT * FROM COMPANY;

-- Everytime we insert an Employee we insert it to the EmployeeToProject (Needs to be a trigger)
-- INSERT INTO Employee (name, ssn, dob, house_number, street, zip_code, state, company_id, department, seniority, permission) VALUES ("Test", '555-55', '10/10/10', 44, 'NicSt', "9774",'CA', 1,1,1,1);


-- Inserting a Department
INSERT INTO Department (name) VALUES ("Engineering");
INSERT INTO Department(name) VALUES("Marketing");
INSERT INTO Department(name) VALUES("Sales");
-- SELECT * FROM Department;

-- Inserting a Team 
INSERT INTO Team (name, department) VALUES ("Frontend", 1);
INSERT INTO Team (name, department) VALUES ("Sales Employee", 3);
INSERT INTO Team (name, department) VALUES ("Frontend Again", 1);
-- SELECT * FROM Team;

-- Inserting a Project
Insert INTO Project (project_id, name, company) VALUES (1,"Home Page", 1);
Insert INTO Project (project_id, name, company) VALUES (2,"About Us Page", 1);
Insert INTO Projecct (project_id, name, company) VALUES (3,"Sales Page", 1);
-- Select * FROM Project;

-- Inserting into Seniority Level
INSERT INTO SeniorityLevel(level) VALUES("Manager");
-- SELECT * FROM SeniorityLevel;
-- Update the permission_fk in SeniorityLevel for Manager


-- Inserting into Permissions
INSERT INTO Permission(permission_name, seniority) VALUES('ManagerPermission', 1);
-- SELECT * FROM Permission;


-- SELECT * FROM Permission;



-- (Meant to be a trigger) Insert to EmployeeToProject
-- INSERT INTO EmployeeToProject (employee_id, project_id) 


-- Entering a Perk 
INSERT INTO Perks (name) VALUES("DoorDash");
INSERT INTO Perks (name) VALUES("Uber");

-- Entering Insurance 
INSERT INTO InsuranceCompany (name, company) VALUES("XCompanyHealth", 1);
INSERT INTO InsuranceCompany (name, company) VALUES("XCompanyDental", 1);
INSERT INTO InsuranceCompany (name, company) VALUES("XCompanyVision", 1);
-- SELECT * FROM InsuranceCompany;


-- Inserting into Bonuses 




















