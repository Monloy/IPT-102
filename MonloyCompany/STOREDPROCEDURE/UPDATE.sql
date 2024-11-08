
CREATE PROCEDURE UpdateEmployee
    @EmployeeID INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Position NVARCHAR(50),
    @Department NVARCHAR(50),
    @HireDate DATE,
    @Salary DECIMAL(18, 2)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = @EmployeeID)
    BEGIN
        UPDATE Employees
        SET FirstName = @FirstName,
            LastName = @LastName,
            Position = @Position,
            Department = @Department,
            HireDate = @HireDate,
            Salary = @Salary
        WHERE EmployeeID = @EmployeeID;

        PRINT 'Employee updated successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Employee not found.';
    END
END;
