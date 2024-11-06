USE [MonloyCompany]
GO

DROP TABLE IF EXISTS dbo.DEPENDENT;
GO

CREATE TABLE dbo.DEPENDENT
(
    [Essn]           CHAR(9)     NOT NULL,
    [Dependent_name] VARCHAR(15) NOT NULL,
    [Sex]            CHAR(1), 
    [Bdate]          DATE,
    [Relationship]   VARCHAR(8),
    CONSTRAINT PK_Dependent PRIMARY KEY (Essn, Dependent_name)
);
GO

CREATE NONCLUSTERED INDEX IX_DEPENDENT_name ON dbo.DEPENDENT ([Dependent_name] ASC);
GO

INSERT INTO DEPENDENT (Essn, Dependent_name, Sex, Bdate, Relationship)
VALUES 
(N'CCIS', N'Monloy', N'M', N'2002-12-22', N'SINGLE'),
(N'CBA', N'Antonette', N'F', N'2004-04-15', N'SINGLE'),
(N'CSW', N'Emmanuel', N'M', N'2000-12-25', N'SINGLE');
GO

SELECT * FROM DEPENDENT;
GO

UPDATE dbo.DEPENDENT
SET Relationship = 'SINGLE',
    Bdate = '2002-12-22'
WHERE Dependent_name = 'Monloy'; 
GO

SELECT * FROM DEPENDENT;
GO

DELETE FROM dbo.DEPENDENT WHERE Dependent_name = 'Monloy';
GO

SELECT * FROM DEPENDENT;
GO
