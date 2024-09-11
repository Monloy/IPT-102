CREATE TABLE [dbo].[DEPENDENT]
(
	Essn CHAR(9) NOT NULL,
	Dependent_name VARCHAR(15) NOT NULL,
	Sex CHAR,
	Bdate DATE,
	Relationship VARCHAR(8)

	Constraint [PK_DEPARTMENT] Primary Key (Essn, Dependent_name),
	Constraint [FK_DEPARTMENT] Foreign Key (Essn) REFERENCES EMPLOYEE(Ssn)
);
GO

CREATE NONCLUSTERED INDEX[IX_DEPENDENT_Sex] ON [DEPENDENT] ([Sex] ASC);