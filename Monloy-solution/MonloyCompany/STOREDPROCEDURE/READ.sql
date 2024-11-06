
CREATE PROCEDURE GetEmployeeByID
    @EmployeeID INT
AS
BEGIN
    SELECT EmployeeID, FirstName, LastName, Position, Department, Salary
    FROM Employees
    WHERE EmployeeID = @EmployeeID;
END;
