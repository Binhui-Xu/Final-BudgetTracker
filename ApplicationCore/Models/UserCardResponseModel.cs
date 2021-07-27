using System;

namespace ApplicationCore.Models
{
    public class UserCardResponseModel
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public decimal Income { get; set; }
        public decimal Expenditure { get; set; }
    }
}