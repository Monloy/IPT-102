CREATE TABLE [dbo].[DEPARTMENT]
(
	Dname VARCHAR(15) NOT NULL,
	Dnumber INT NOT NULL,
	Mgr_ssn CHAR(9) NOT NULL,
	Mgr_start_date DATE

	Constraint [PK_DEPARTMENT_Dnumber] Primary key clustered (Dnumber),
	Constraint [UX_DEPARTMENT] Unique Nonclustered (Dname),
	Constraint [FK_DEPARTMENT_EMPLOYEE] Foreign key (Mgr_ssn) REFERENCES EMPLOYEE(Ssn)
);
GO

CREATE NONCLUSTERED INDEX [IX_DEPARTMENT_Dnumber_Dname] ON [dbo].[DEPARTMENT] ([Dname] ASC);