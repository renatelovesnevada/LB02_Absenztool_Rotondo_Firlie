create database M290LB02;
create database Absenzensystem;
show databases;
use Absenzensystem;

CREATE TABLE Begründung (
                            GrundID INT PRIMARY KEY,
                            Beschreibung VARCHAR(255)
);
CREATE TABLE Abteilung (
                           AbteilungID INT PRIMARY KEY,
                           AbteilungName VARCHAR(255),
                           Lehrperson VARCHAR(255)
);
CREATE TABLE Student (
                         StudentID INT PRIMARY KEY,
                         Name VARCHAR(255),
                         Nachname VARCHAR(255)
);
select * from login;
CREATE TABLE Login (
                       loginID INT PRIMARY KEY,
                       PasswordID VARCHAR(255)
);

ALTER TABLE Absenz
ADD COLUMN NewColumn VARCHAR(100);

I


Drop TABLE Absenz;
use Absenzensystem;

Create TABLE Absenz (
                        AbsenzID INT NOT NULL AUTO_INCREMENT,
                        date DATE,
                        AbsenzStatus VARCHAR(50),
                        GrundID INT,
                        AbteilungID INT,
                        LoginID INT,
                        StudentID INT,
                        PRIMARY KEY (AbsenzID),
                        FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
                        FOREIGN KEY (GrundID) REFERENCES Begründung(GrundID),
                        FOREIGN KEY (AbteilungID) REFERENCES Abteilung(AbteilungID),
                        FOREIGN KEY (LoginID) REFERENCES Login(loginID)
);

ALTER TABLE Absenz
ADD COLUMN Kommentar VARCHAR(255);

UPDATE Absenz
SET Kommentar = AbsenzStatus;

ALTER TABLE Absenz
    DROP COLUMN AbsenzStatus;

show tables;

select * from Absenz;
INSERT INTO Login (loginID, PasswordID) VALUES
  (1, 'johns_password'),
 (2, 'alices_password'),
 (3, 'bobs_password');
/*Test logins for teachers! - name of students as login just to test*/
INSERT INTO Login (loginID, PasswordID) VALUES
                                            (5, 'lela_password'),
                                            (6, 'al_password'),
                                            (7, 'bab_password'),
                                            (8, 'tim_password'),
                                            (9, 'jake_password'),
                                            (10, 'elena_password'),
                                            (11, 'artin_password');

/*Test for Demir*/
INSERT INTO Login (loginID, PasswordID) VALUES
(10, 'Elena_password');

/*STudents*/
INSERT INTO Student (StudentID, Name, Nachname) VALUES
  (1, 'John', 'Doe'),
 (2, 'Alice', 'Smith'),
  (3, 'Bob', 'Johnson');
INSERT INTO Student (StudentID, Name, Nachname) VALUES
                                                    (5, 'lela', 'john'),
                                                    (6, 'al', 'smi'),
                                                    (7, 'bab', 'fir'),
(8, 'tim', 'deno'),
(9, 'jake', 'gent'),
(10, 'elena', 'rot'),
(11,'artin', 'kar');
/*Test for Demir*/

INSERT INTO Student (StudentID, Name, Nachname) VALUES
    (4, 'Alessia', 'Rotondo');

INSERT INTO Begründung (GrundID, Beschreibung) VALUES
 (1, 'Sick leave'),
  (2, 'Appointment'),
 (3, 'Personal reasons');
/*Test for Demir*/
INSERT INTO Begründung (GrundID, Beschreibung) VALUES
(5, 'Family Reason'),
(6, 'School Excursion'),
(7, 'Business Trip'),
(8, 'Project Week'),
(9, 'Sport Obligation'),
(10, 'External Training');

INSERT INTO Abteilung (AbteilungID, AbteilungName, Lehrperson) VALUES
  (1, 'Mathematics', 'Mr. Johnson'),
 (2, 'Science', 'Mrs. Smith'),
 (3, 'English', 'Ms. Davis');
/*Test for Demir*/
INSERT INTO Abteilung (AbteilungID, AbteilungName, Lehrperson) VALUES
(4, 'Programming', 'Mr.Demir');


INSERT INTO Abteilung (AbteilungID, AbteilungName, Lehrperson) VALUES
    (5, 'German', 'Mr.Bob'),
    (6, 'ICT', 'Mr.Hey'),
    (7, 'Sport', 'Mr.Lal'),
    (8, 'Support', 'Mr.John'),
    (9, 'Marketing', 'Mr.Hays'),
    (10, 'Marketing Design', 'Mr.Lol')
    ;

INSERT Into Absenz (AbsenzID, date, AbsenzStatus, GrundID, AbteilungID, LoginID, StudentID)  values (1,'01.12.2023','abwesend',1,2,2,2);
INSERT Into Absenz (AbsenzID, date, AbsenzStatus, GrundID, AbteilungID, LoginID, StudentID)  values (2,'11.12.2023','abwesend',1,2,3,3);
INSERT Into Absenz (AbsenzID, date, AbsenzStatus, GrundID, AbteilungID, LoginID, StudentID)  values (3,'13.12.2023','abwesend',3,2,2,2);
/*Test for Demir*/
INSERT Into Absenz (AbsenzID, date, AbsenzStatus, GrundID, AbteilungID, LoginID, StudentID)  values (4,'25.12.2023','Late',4,4,5,5);

/*Test for Demir update alessia absenz*/
UPDATE Absenz
Set AbsenzStatus = 'No reason'
Where AbsenzID = 4;

/*Test for Demir delete alessia  absenz*/
Delete FROM Absenz
Where AbsenzID = 4;

Update Student
Set Name = 'Lena', Nachname = 'Bucher'
Where StudentID = 11;

UPDATE Absenz
SET date = '02.11.2023'
WHERE AbsenzID = 1;

Delete FROM Absenz
Where AbsenzID = 5;

select * from Absenz
Where AbsenzID = 4;
select * from Student;

Select * from Absenz;
where GrundID = 1;

select * from Student;

UPDATE Login
Set PasswordID = 'Lena_password'
where loginID = 11;

select * from Login;
select * from Begründung;
select * from Absenz;
select * from Abteilung;
UPDATE Abteilung
Set AbteilungName = 'Layout Design', Lehrperson = 'Mrs. Rene'
Where AbteilungID = 10;

DELETE from Begründung
where GrundID = 5;


DELETE from Login
where loginID = 10;