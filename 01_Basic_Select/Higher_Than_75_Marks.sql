-- Problem: Query Name of students who scored > 75, ordered by last 3 chars of name, then by ID
-- Table: STUDENTS (includes ID, Name, Marks)

SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT (Name , 3) , ID ;