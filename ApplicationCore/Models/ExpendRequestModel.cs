using System;
using System.ComponentModel.DataAnnotations;

namespace ApplicationCore.Models
{
    public class ExpendRequestModel
    {
        [Required]
        public int UserId { get; set; }
        [Required]
        [Range(Double.MinValue,0.0,ErrorMessage = "This is Expenditure Record, Please enter Amount less than 0.00")]
        public decimal Amount { get; set; }
        public string Description { get; set; }
        [DataType(DataType.Date)]
        public DateTime ExpDate { get; set; }
        public string Remarks { get; set; }
    }
}