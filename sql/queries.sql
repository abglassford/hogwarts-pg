-- * How many students attend Hogwarts?
SELECT count(*) FROM students;
-- * How many students are in a specific house?
SELECT name AS house_name, count(*) AS total_students FROM houses
JOIN students
ON house_id = houses.id
GROUP BY name;
-- * How many students are taking a class by a given teacher?
SELECT t.first_name || ' ' || t.last_name AS teacher_name , count(student_id)
FROM teachers t
JOIN classes
ON teacher_id = t.id
JOIN classes_students cs
ON class_id = classes.id
JOIN students s
ON student_id = s.id
WHERE t.first_name = 'Serverus'
GROUP BY t.first_name, t.last_name;
-- * How many students are of a given year?
SELECT * FROM students WHERE year = 2;
-- * Which students have no parents?
SELECT * FROM students s
WHERE parent_id IS NULL;

-- extra queries

SELECT first_name, last_name
FROM students
WHERE (SELECT child_id FROM parents WHERE last_name = 'Diggory') = id;

-- first_name | last_name
-- ------------+-----------
-- Cedric     | Diggory

SELECT s.first_name, s.last_name
FROM students s
JOIN parents p
ON s.id = child_id
WHERE s.last_name = 'Diggory';

-- first_name | last_name
-- ------------+-----------
-- Cedric     | Diggory

SELECT first_name, last_name, houses.name FROM teachers
JOIN houses
ON house_id = houses.id;
--
-- first_name | last_name  |    name
-- ------------+------------+------------
-- Serverus   | Snape      | Slytherin
-- Vincent    | Crabble    | Slytherin
-- Minerva    | McGonagall | Gryffindor
-- Remus      | Lupin      | Gryffindor
-- Pomona     | Sprout     | Hufflepuff
-- Silvanus   | Kettleburn | Hufflepuff
-- Filius     | Flitwick   | Ravenclaw
-- Roger      | Davies     | Ravenclaw
