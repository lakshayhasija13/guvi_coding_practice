-- 1
SELECT COUNT(*)
FROM pets;

-- 2
SELECT age 
FROM pets 
WHERE name = 'Fluffy';

-- 3
UPDATE pets 
SET age = 6
WHERE name = 'Buddy';
SELECT *
FROM pets 
WHERE name = 'Buddy';

-- 4
INSERT INTO pets VALUES (6, 'Shelly', 'Turtle', 10, 'Grace');
SELECT *
FROM pets
WHERE owner = 'Grace';
-------------------------
