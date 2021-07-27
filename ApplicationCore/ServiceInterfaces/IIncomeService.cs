using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ApplicationCore.Entities;
using ApplicationCore.Models;
using ApplicationCore.RepositoryInterfaces;

namespace ApplicationCore.ServiceInterfaces
{
    public interface IIncomeService
    {
        Task<UserBudgetResponseModel> AddIncomeRecord(IncomeRequestModel model);
        Task<UserBudgetResponseModel> GetAllIncomeRecords();
        Task<UserBudgetResponseModel> DeleteIncomeRecord(int id);
        Task<UserBudgetResponseModel> UpdateIncomeRecord(IncomeUpdateRequestModel model);
        Task<UserBudgetResponseModel> GetIncomeById(int id);
        Task<List<UserBudgetResponseModel>> GetIncomesByUserId(int id);
    }
}
