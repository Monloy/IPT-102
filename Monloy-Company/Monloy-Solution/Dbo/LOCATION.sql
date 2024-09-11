CREATE TABLE [dbo].[LOCATIONS]
(
	Dnumber INT NOT NULL,
	Dlocation VARCHAR(15) NOT NULL
	
	Constraint [PK_LOCATIONS_Dnumber, PK_Dlocation] Primary key (Dnumber, Dlocation),
	Constraint [FK_LOCATIONS_Dnumber] FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber)
);
GO

Create Nonclustered Index[IX_LOCATIONS_Dnumber] ON [LOCATIONS] ( [Dlocation] ASC);
