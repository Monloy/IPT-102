using System.Collections.Generic;
using System.Linq;

namespace MotorPartsLibrary
{
    public class MotorPartsService
    {
        private List<MotorPart> motorParts = new List<MotorPart>();

        public List<MotorPart> GetMotorParts() => motorParts;

        public void SaveMotorPart(MotorPart motorPart)
        {
            if (motorPart.Id == 0) // New part
            {
                motorPart.Id = motorParts.Count + 1; // Simple ID assignment
                motorParts.Add(motorPart);
            }
            else // Update existing part
            {
                var existingPart = motorParts.FirstOrDefault(p => p.Id == motorPart.Id);
                if (existingPart != null)
                {
                    existingPart.Name = motorPart.Name;
                    existingPart.Color = motorPart.Color;
                    existingPart.Price = motorPart.Price;
                    existingPart.Quantity = motorPart.Quantity;
                }
            }
        }

        public void DeleteMotorPart(int id)
        {
            var partToDelete = motorParts.FirstOrDefault(p => p.Id == id);
            if (partToDelete != null)
            {
                motorParts.Remove(partToDelete);
            }
        }
    }
}
