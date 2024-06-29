--CREATE DATABASE Teachers 
USE Teachers 
/*
CREATE TABLE POST (
    Id INTEGER PRIMARY KEY,
    Name NVARCHAR(20)
)

CREATE TABLE TEACHER (
    Id INTEGER PRIMARY KEY,
    Name NVARCHAR(15),
    Code CHAR(10),
    IdPost INTEGER,
    Tel CHAR(7),
    Salary INTEGER,
    Rise NUMERIC(6,2),
    HireDate DATETIME,
)
*/

--DROP TABLE POST


--ALTER TABLE TEACHER DROP COLUMN IdPost

/*
ALTER TABLE TEACHER
ADD CONSTRAINT chk_HireDate CHECK (HireDate >= '1990-01-01')
*/
/*
ALTER TABLE TEACHER
ADD CONSTRAINT uq_Code UNIQUE (Code)
*/
/*
ALTER TABLE TEACHER 
ALTER COLUMN Salary NUMERIC(6,2)
*/
/*
ALTER TABLE TEACHER
ADD CONSTRAINT chk_Salary CHECK (Salary >= 1000 AND Salary <= 5000)
*/

--EXEC sp_rename 'TEACHER.Tel', 'Phone', 'COLUMN'

/*
ALTER TABLE TEACHER
ALTER COLUMN Phone CHAR(11)
*/
/*
CREATE TABLE POST (
    Id INTEGER PRIMARY KEY,
    Name NVARCHAR(20)
)
*/

/*
ALTER TABLE POST
ADD CONSTRAINT chk_PostName CHECK (Name IN (N'Профессор', N'Доцент', N'Преподаватель', N'Ассистент'))
*/
/*
ALTER TABLE TEACHER
ADD CONSTRAINT chk_TeacherName CHECK (Name NOT LIKE '%[0-9]%')
*/
/*
ALTER TABLE TEACHER
ADD IdPost INTEGER
*/
/*
ALTER TABLE TEACHER
ADD CONSTRAINT fk_IdPost FOREIGN KEY (IdPost) REFERENCES POST(Id)
*/

INSERT INTO POST (Id, Name) VALUES
(1, N'Профессор'),
(2, N'Доцент'),
(3, N'Преподаватель'),
(4, N'Ассистент');

INSERT INTO TEACHER (Id, Name, Code, IdPost, Phone, Salary, Rise, HireDate) VALUES
(1, N'Сидоров', '0123456789', 1, 'NULL', 1070, 470, '01.09.1992'),
(2, N'Рамилевский', '4567890123', 2, '4567890123', 1110, 370, '09.09.1998'),
(3, N'Хорошко', '1234567890', 3, 'NULL', 2000, 230, '10.10.2001'),
(4, N'Бибровский', '2345678901', 4, 'NULL', 4000, 170, '01.09.2003'),
(5, N'Воронаев', 'NULL', 4, 'NULL', 1500, 150, '02.09.2002'),
(6, N'Кузинченко', '5678901234', 3, '4567890', 3000, 270, '01.01.1991')












