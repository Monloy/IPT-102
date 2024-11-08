﻿USE [MonloyCompany]
GO

DROP TABLE IF EXISTS dbo.DEPARTMENT;
GO

CREATE TABLE dbo.DEPARTMENT
(
   Dname          VARCHAR(15) NOT NULL,
   Dnumber        INT         NOT NULL,
   Mgr_ssn        CHAR(9)     NOT NULL,
   Mgr_start_date DATE,
   CONSTRAINT PK_DEPARTMENT_Dnumber PRIMARY KEY (Dnumber),
   CONSTRAINT UX_DEPARTMENT_Dname UNIQUE (Dname)
);
GO

CREATE NONCLUSTERED INDEX IX_DEPARTMENT_Name ON dbo.DEPARTMENT (Dname ASC);
GO

INSERT INTO DEPARTMENT (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
VALUES 
(N'Monloy', 12, N'123456789', '2002-12-22'),
(N'Guen', 11, N'125456789', '2008-11-28');
GO

SELECT * FROM DEPARTMENT;
GO

DELETE FROM dbo.DEPARTMENT WHERE Dname = 'Monloy';
GO 

SELECT * FROM DEPARTMENT;
GO

UPDATE dbo.DEPARTMENT
SET Dname = 'Monloy',
    Mgr_ssn = '973833335',
    Mgr_start_date = '2002-12-22'
WHERE Dnumber = 12;
GO

SELECT * FROM DEPARTMENT;
GO