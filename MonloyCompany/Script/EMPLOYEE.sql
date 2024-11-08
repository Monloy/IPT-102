USE [MonloyCompany]
GO

DROP TABLE IF EXISTS dbo.EMPLOYEE;
GO

CREATE TABLE dbo.EMPLOYEE
(
    [Fname]     VARCHAR(15) NOT NULL, 
    [Minit]     CHAR(1),    
    [Lname]     VARCHAR(15) NOT NULL,
    [Ssn]       CHAR(9)     NOT NULL,
    [Bdate]     DATE,
    [Address]   VARCHAR(30),
    [Sex]       CHAR(1),    
    [Salary]    DECIMAL(10,2),
    [Super_ssn] CHAR(9),
    [Dno]       INT         NOT NULL,
    CONSTRAINT PK_EMPLOYEE PRIMARY KEY(Ssn) 
);
GO

CREATE NONCLUSTERED INDEX IX_EMPLOYEE_Name ON dbo.EMPLOYEE ([Lname] ASC, [Fname] ASC);
GO

INSERT INTO EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES 
(N'Monloy', N'4', N'Dindo', N'123456789', '2002-12-22', N'Alamada, North Cot. ', N'M', 300.00, N'123456789', 40);
GO

SELECT * FROM EMPLOYEE;
GO

UPDATE dbo.EMPLOYEE
SET Salary = 400.00,
    Address = 'NEW ADDRESS, Midsayap, COT' 
WHERE Ssn = '123456789';
GO

SELECT * FROM EMPLOYEE;
GO

DELETE FROM dbo.EMPLOYEE WHERE Ssn = '123456789';
GO

SELECT * FROM EMPLOYEE;
GO
