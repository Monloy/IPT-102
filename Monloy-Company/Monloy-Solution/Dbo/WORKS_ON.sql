CREATE TABLE [dbo].[WORKS_ON]
(
	Essn CHAR(9) NOT NULL,
	Pno INT NOT NULL,
	[Hours] DECIMAL(3,1) NOT NULL

	Constraint[PK_WORKS_ON] Primary key (Essn, Pno),
	Constraint[FK_WORKS_ON_EMPLOYEE] FOREIGN KEY (Essn) References dbo.EMPLOYEE(Ssn),
	Constraint[FK_WORKS_ON_Pnumber] Foreign key (Pno) References dbo.PROJECT(Pnumber)
);
go

Create Nonclustered Index[IX_WORKS_ON_Hours] On [WORKS_ON] ([Hours] ASC)