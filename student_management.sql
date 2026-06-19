CREATE DATABASE StudentManagement;
GO

USE StudentManagement;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(100)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1)
);

INSERT INTO Students VALUES
(1,'John','Smith','john@email.com'),
(2,'Sarah','Jones','sarah@email.com'),
(3,'Michael','Brown','michael@email.com');

INSERT INTO Instructors VALUES
(1,'Dr. Wilson'),
(2,'Professor Adams');

INSERT INTO Courses VALUES
(101,'Database Programming',1),
(102,'Python Programming',2);

INSERT INTO Enrollments VALUES
(1,1,101),
(2,1,102),
(3,2,101);

INSERT INTO Grades VALUES
(1,1,101,'A'),
(2,1,102,'B'),
(3,2,101,'A');
