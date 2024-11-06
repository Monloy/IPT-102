namespace CalculatorLibrary
{
    public class Calculator
    {
        public double Add(double num1, double num2)
        {
            return num1 + num2;
        }

        public double Subtract(double num1, double num2)
        {
            return num1 - num2;
        }

        public double Multiply(double num1, double num2)
        {
            return num1 * num2;
        }

        public string Divide(double num1, double num2)
        {
            if (num2 == 0)
            {
                return "Cannot divide by zero.";
            }
            return (num1 / num2).ToString();
        }
    }
}
