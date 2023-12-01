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

CREATE TABLE Absenz (
                        StudentID INT,
                        date DATE,
                        AbsenzStatus VARCHAR(50),
                        GrundID INT,
                        AbteilungID INT,
                        LoginID INT,
                        PRIMARY KEY (StudentID, date),
                        FOREIGN KEY (GrundID) REFERENCES Begründung(GrundID),
                        FOREIGN KEY (AbteilungID) REFERENCES Abteilung(AbteilungID),
                        FOREIGN KEY (LoginID) REFERENCES Login(loginID)
);
show tables;


