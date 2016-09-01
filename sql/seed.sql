INSERT INTO houses (name, head)
VALUES
('Gryffindor', (SELECT id FROM teachers WHERE last_name = 'McGonagall')),
('Ravenclaw', (SELECT id FROM teachers WHERE last_name = 'Flitwick')),
('Slytherin', (SELECT id FROM teachers WHERE last_name = 'Snape')),
('Hufflepuff', (SELECT id FROM teachers WHERE last_name = 'Sprout'));

INSERT INTO students (first_name, last_name, house_id, year)
VALUES
('Harry', 'Potter', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2),
('Ron', 'Weasley', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2),
('Hermione', 'Granger', (SELECT id FROM houses WHERE name = 'Gryffindor'), 2),
('Luna', 'Lovegood', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 1),
('Rowena', 'Ravenclaw', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 3),
('Gilderoy', 'Lockhart', (SELECT id FROM houses WHERE name = 'Ravenclaw'), 3),
('Draco', 'Malfoy', (SELECT id FROM houses WHERE name = 'Slytherin'), 2),
('Tom', 'Riddle', (SELECT id FROM houses WHERE name = 'Slytherin'), 4),
('Marcus', 'Flint', (SELECT id FROM houses WHERE name = 'Slytherin'), 1),
('Cedric','Diggory',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 1),
('Nymphadora','Tonks',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 4),
('Newt','Scamander',(SELECT id FROM houses WHERE name = 'Hufflepuff'), 4);

INSERT INTO teachers (first_name, last_name, house_id)
('Serverus', 'Snape', (SELECT id FROM houses WHERE name = 'Slytherin')),
('Vincent', 'Crabble', (SELECT id FROM houses WHERE name = 'Slytherin')),
('Minerva', 'McGonagall', (SELECT id FROM houses WHERE name = 'Gryffindor')),
('Remus', 'Lupin', (SELECT id FROM houses WHERE name = 'Gryffindor')),
('Pomona', 'Sprout', (SELECT id FROM houses WHERE name = 'Hufflepuff')),
('Silvanus', 'Kettleburn', (SELECT id FROM houses WHERE name = 'Hufflepuff')),
('Filius', 'Flitwick', (SELECT id FROM houses WHERE name = 'Ravenclaw')),
('Roger', 'Davies', (SELECT id FROM houses WHERE name = 'Ravenclaw'));

INSERT INTO parents (first_name, last_name, child_id)
