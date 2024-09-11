CREATE TABLE [dbo].[PROJECT]
(
	Pname VARCHAR(15) NOT NULL,
	Pnumber INT NOT NULL,
	Plocation VARCHAR(15),
	Dnum INT NOT NULL

	Constraint[PK_PROJECT_Pnumber]PRIMARY KEY(Pnumber),
	Constraint[FK_PROJECT_Pname] UNIQUE (Pname),
	Constraint[FK_PROJECT_Pnumber]FOREIGN KEY (Dnum) REFERENCES DEPARTMENT (Dnumber)
);
GO

Create Nonclustered Index[IX_PROJECT_Plocation] ON [PROJECT] ([Plocation] ASC);