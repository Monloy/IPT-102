CREATE PROCEDURE CreateEmployee
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Position NVARCHAR(50),
    @Department NVARCHAR(50),
    @HireDate DATE,
    @Salary DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO Employees (FirstName, LastName, Position, Department, HireDate, Salary)
    VALUES (@FirstName, @LastName, @Position, @Department, @HireDate, @Salary);
    
    DECLARE @NewEmployeeID INT = SCOPE_IDENTITY();
    PRINT 'New Employee ID: ' + CAST(@NewEmployeeID AS NVARCHAR(10));
END;
