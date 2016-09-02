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

-- extra queries -------------------------------------

-- Who is Cedric Diggory's parent?

SELECT p.first_name || ' ' || p.last_name AS parent
FROM students s
JOIN parents p
ON s.parent_id = p.id
WHERE s.last_name = 'Diggory';

-- Which studends belong to Gryffindor?

SELECT h.name, s.first_name || ' ' || s.last_name AS student
FROM students s
JOIN houses h
ON h.id = house_id
WHERE h.name = 'Gryffindor';

-- What is the Id of the teacher who teaches "The Light and How to Swing It?"

SELECT t.id, t.first_name || ' ' || t.last_name AS teacher
FROM teachers t
JOIN classes c
ON t.id = c.teacher_id
WHERE c.subject = 'The Light and How to Swing It';

-- Whose children are taking the class 'How to Not Die,' and what are the children's names?

SELECT  p.first_name || ' ' || p.last_name AS parents, s.first_name || ' ' || s.last_name AS students
FROM students s
JOIN classes_students cs
ON s.id = cs.student_id
JOIN parents p
ON p.id = s.parent_id
JOIN classes c
ON cs.class_id = c.id
WHERE c.subject = 'How to Not Die';
