using System;
namespace ApplicationCore.Models
{
    public class UserBudgetResponseModel
    {
        public int Id { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
        public DateTime? IncomeOrExpDate { get; set; }
        public string Remarks { get; set; }
    }
}
