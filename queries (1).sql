CREATE TABLE students (
  id INT UNIQUE,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT NOT NULL
);
INSERT INTO students (id, first_name, last_name, age) 
VALUES 
  (1, 'Harsh', 'Trivedi', 18),
  (2, 'Darsh', 'Patel', 21),
  (3, 'Virat', 'Kohli', 34);

SELECT first_name, age FROM students;
ALTER TABLE students ADD COLUMN dept VARCHAR(5);
CREATE INDEX new_index ON students (id);
CREATE TABLE students_det (
  id INT,
  address TEXT NOT NULL,
  FOREIGN KEY (id) REFERENCES students(id)
);
INSERT INTO students_det (id, address) VALUES (1, '123 Main St'), (2, '456 Elm St'), (3, '789 Oak St');
SELECT s1.first_name, s1.age, s2.address 
FROM students s1
INNER JOIN students_det s2 ON s1.id = s2.id;
select * from students_det;
CREATE TABLE students_marks (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL
);
INSERT INTO students_marks (id, name, marks) VALUES
(1, 'Alice', 85),
(2, 'Bob', 90),
(3, 'Charlie', 78),
(4, 'David', 92),
(5, 'Eve', 88);
select * from students_marks;
SELECT id, name , marks,
(SELECT AVG(marks) FROM  students_marks) AS average_marks FROM students_marks;
