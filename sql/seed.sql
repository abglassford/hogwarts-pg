INSERT INTO teachers (first_name, last_name)
VALUES
('Serverus', 'Snape'),
('Vincent', 'Crabble'),
('Minerva', 'McGonagall'),
('Remus', 'Lupin'),
('Pomona', 'Sprout'),
('Silvanus', 'Kettleburn'),
('Filius', 'Flitwick'),
('Roger', 'Davies');

INSERT INTO houses (name, head_id)
VALUES
('Gryffindor', (SELECT id FROM teachers WHERE last_name = 'McGonagall')),
('Ravenclaw', (SELECT id FROM teachers WHERE last_name = 'Flitwick')),
('Slytherin', (SELECT id FROM teachers WHERE last_name = 'Snape')),
('Hufflepuff', (SELECT id FROM teachers WHERE last_name = 'Sprout'));

INSERT INTO parents (first_name, last_name)
VALUES
('Arthur', 'Weasley'),
('Monica', 'Granger'),
('Xenophilius', 'Lovegood'),
('Lucius', 'Malfoy'),
('Amos', 'Diggory');

INSERT INTO students (first_name, last_name, house_id, year, parent_id)
VALUES
('Harry', 'Potter', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2, (SELECT id FROM parents p WHERE p.last_name = 'Potter')),
('Ron', 'Weasley', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2, (SELECT id FROM parents p WHERE p.last_name = 'Weasley')),
('Hermione', 'Granger', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2, (SELECT id FROM parents p WHERE p.last_name = 'Granger')),
('Luna', 'Lovegood', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 1, (SELECT id FROM parents p WHERE p.last_name = 'Lovegood')),
('Rowena', 'Ravenclaw', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 3, (SELECT id FROM parents p WHERE p.last_name = 'Ravenclaw')),
('Gilderoy', 'Lockhart', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 3, (SELECT id FROM parents p WHERE p.last_name = 'Lockhart')),
('Draco', 'Malfoy', (SELECT id FROM houses WHERE name = 'Slytherin'), 2, (SELECT id FROM parents p WHERE p.last_name = 'Malfoy')),
('Tom', 'Riddle', (SELECT id FROM houses WHERE name = 'Slytherin'), 4, (SELECT id FROM parents p WHERE p.last_name = 'Riddle')),
('Marcus', 'Flint', (SELECT id FROM houses WHERE name = 'Slytherin'), 1, (SELECT id FROM parents p WHERE p.last_name = 'Flint')),
('Cedric','Diggory',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 1, (SELECT id FROM parents p WHERE p.last_name = 'Diggory')),
('Nymphadora', 'Tonks',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 4, (SELECT id FROM parents p WHERE p.last_name = 'Tonks')),
('Newt','Scamander',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 4, (SELECT id FROM parents p WHERE p.last_name = 'Scamander'));

INSERT INTO classes (subject, teacher_id)
VALUES
('Defence Against the Dark Arts', (SELECT id FROM teachers WHERE last_name = 'Snape')),
('Shapshifting for Beginners', (SELECT id FROM teachers WHERE last_name = 'Lupin')),
('The Light and How to Swing It', (SELECT id FROM teachers WHERE last_name = 'Flitwick')),
('How to Not Die', (SELECT id FROM teachers WHERE last_name = 'Kettleburn'));

INSERT INTO classes_students (student_id, class_id)
VALUES
((SELECT id FROM students WHERE last_name = 'Granger'), (SELECT id FROM classes WHERE subject = 'Defence Against the Dark Arts')),
((SELECT id FROM students WHERE last_name = 'Granger'), (SELECT id FROM classes WHERE subject = 'The Light and How to Swing It')),
((SELECT id FROM students WHERE last_name = 'Potter'), (SELECT id FROM classes WHERE subject = 'Defence Against the Dark Arts')),
((SELECT id FROM students WHERE last_name = 'Malfoy'), (SELECT id FROM classes WHERE subject = 'How to Not Die')),
((SELECT id FROM students WHERE last_name = 'Weasley'), (SELECT id FROM classes WHERE subject = 'How to Not Die'));
