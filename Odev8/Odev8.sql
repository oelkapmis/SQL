UPDATE employee
SET name = 'Oguzhan', 
	birthday = '1996-06-21',
	email = 'deneme@gmail.com'
WHERE id = 2;

SET name = 'Daniel', 
	birthday = '1970-11-14',
	email = 'daniel_narrow@gmail.com'
WHERE id = 15;

DELETE FROM employee
WHERE name = 'Jo';

DELETE FROM employee
WHERE id = 38;
