UPDATE employee
SET name = 'Oguzhan', 
	birthday = '1996-06-21',
	email = 'deneme@gmail.com'
WHERE id = 2;

SET name = 'Daniel', 
	birthday = '1970-11-14',
	email = 'daniel_narrow@gmail.com'
WHERE id = 15;

SET name = 'Katya', 
	birthday = '2001-05-02',
	email = 'katya.kristzof@gmail.com'
WHERE id = 9;

DELETE FROM employee
WHERE name = 'Jo';

DELETE FROM employee
WHERE id = 38;

DELETE FROM employee
WHERE id = 47;
