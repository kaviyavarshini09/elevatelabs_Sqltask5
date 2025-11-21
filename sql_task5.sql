create database students_record;
use students_record;
DROP TABLE IF EXISTS Marks;
DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Department VARCHAR(50)
);
INSERT INTO Students VALUES
(1, 'Kaviya', 'AI'),
(2, 'Meera', 'CSE'),
(3, 'Rahul', 'ECE'),
(4, 'Arjun', 'AI');
CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
INSERT INTO Marks VALUES
(101, 1, 'Maths', 95),
(102, 1, 'AI', 90),
(103, 2, 'DBMS', 88),
(104, 3, 'Physics', 76);
SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
INNER JOIN Marks
ON Students.StudentID = Marks.StudentID;
SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID;
SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
RIGHT JOIN Marks
ON Students.StudentID = Marks.StudentID;
SELECT *
FROM Students
FULL OUTER JOIN Marks
ON Students.StudentID = Marks.StudentID;
SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID

UNION

SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
RIGHT JOIN Marks
ON Students.StudentID = Marks.StudentID;
SELECT Students.StudentID, StudentName, Subject, Marks
FROM Students
LEFT JOIN Marks
ON Students.StudentID = Marks.StudentID

UNION

SELECT Students.StudentID, StudentName, Subject, Marks
FROM Marks
LEFT JOIN Students
ON Students.StudentID = Marks.StudentID;








