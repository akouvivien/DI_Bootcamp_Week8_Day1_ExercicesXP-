-- DI_Bootcamp_Week8_Day1_ExerciceXP+

-- 1 Create a database called bootcamp.
-- -- Database: bootcamp

-- -- DROP DATABASE IF EXISTS bootcamp;

CREATE DATABASE bootcamp
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE bootcamp
    IS 'DI_Bootcamp_Week8_Day1_ExerciceXP+';

-- 2/ Create a table called students.
CREATE TABLE students(
 id SERIAL PRIMARY KEY,
 last_name  VARCHAR (100) NOT NULL,
 first_name VARCHAR (100) NOT NULL,
 birth_date DATE NOT NULL);
 
 --3/
 --Insert
 --1/Insert the data seen above to the students table. Find the most efficient way to insert the data.
 INSERT INTO students ( last_name,first_name, birth_date)
VALUES('Benichou','Marc','02/11/1998'),
	  ('Cohen','Yoan','03/12/2010'),
	  ('Benichou','Lea','27/07/1987'),
	  ('Dux','Amelia','07/04/1996'),
	  ('Grez','David','14/06/2003'),
	  ('Simpson','Omer','03/10/1980');
	  
--2 Insert your last_name, first_name and birth_date to the students table (Take a look at the id given).
INSERT INTO students ( last_name,first_name, birth_date)
VALUES('Jean Vivien','Akou','20/06/1995');

-- SELECT
-- 1/Fetch all of the data from the table.

SELECT * FROM public.students
ORDER BY id ASC ;

-- 2 Fetch all of the students first_names and last_names.

SELECT students.first_name,students.last_name FROM public.students
ORDER BY id ASC ;

-- 3 For the following questions, only fetch the first_names and last_names of the students.
-- 1/ Fetch the student which id is equal to 2

SELECT * FROM public.students WHERE students.id = 2;

-- 2 Fetch the student whose last_name is Benichou AND first_name is Marc.
SELECT * FROM public.students WHERE students.last_name = 'Benichou' AND students.first_name = 'Marc';

-- 3 Fetch the students whose last_names are Benichou OR first_names are Marc
SELECT * FROM public.students WHERE students.last_name = 'Benichou' OR students.first_name = 'Marc';

-- 4 Fetch the students whose first_names contain the letter a.
SELECT * FROM public.students WHERE students.first_name ILIKE '%a%';

-- 5 Fetch the students whose first_names start with the letter a.
SELECT * FROM public.students WHERE students.first_name ILIKE 'a%';

-- 6 Fetch the students whose first_names end with the letter a.
SELECT * FROM public.students WHERE students.first_name ILIKE '%a';

-- 7 Fetch the students whose second to last letter of their first_names are a (Example: Leah).
SELECT * FROM public.students WHERE SUBSTRING(students.first_name,LENGTH(students.first_name)-1,1) ILIKE 'a';

-- 8 Fetch the students whose id’s are equal to 1 AND 3 .
SELECT * FROM public.students WHERE students.id = 1 OR students.id = 3;

-- 4 Fetch the students whose birth_dates are equal to or come after 1/01/2000. (show all their info).
SELECT * FROM public.students WHERE students.birth_date >= '1/01/2000'








