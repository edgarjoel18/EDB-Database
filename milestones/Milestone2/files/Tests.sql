USE EDBDatabase;

-- Deleting from Department
-- SELECT * FROM Department
-- DELETE FROM Department WHERE department_id = 3;
UPDATE Department SET department_id = 54 WHERE department_id = 44;
-- SELECT * FROM Department

-- Updating projects
-- SELECT * FROM Project;
UPDATE Project SET name="About Us Page" WHERE project_id = 1;








-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
