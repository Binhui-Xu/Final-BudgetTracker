using System;
using System.Collections.Generic;

namespace ApplicationCore.Models
{
    public class UserDetailResponseModel
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string FullName { get; set; }
        public DateTime JoinedOn { get; set; }
        public decimal TotalCash { get; set; }
        public List<UserBudgetResponseModel> Incomes { get; set; }
        public List<UserBudgetResponseModel> Expands { get; set; }
    }
}
