CREATE PROCEDURE DeleteEmployee
    @EmployeeID INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = @EmployeeID)
    BEGIN
        DELETE FROM Employees
        WHERE EmployeeID = @EmployeeID;

        PRINT 'Employee deleted successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Employee not found.';
    END
END;
