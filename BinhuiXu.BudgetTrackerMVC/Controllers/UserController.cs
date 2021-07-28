using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApplicationCore.Entities;
using ApplicationCore.Models;
using ApplicationCore.ServiceInterfaces;
using Microsoft.AspNetCore.Mvc;

namespace BinhuiXu.BudgetTrackerMVC.Controllers
{
    public class UserController : Controller
    {
        private IUserService _userService;
        private IIncomeService _incomeService;
        private IExpenditureService _expenditureService;
        public UserController(IUserService userService,IIncomeService incomeService,IExpenditureService expenditureService)
        {
            _userService = userService;
            _incomeService = incomeService;
            _expenditureService = expenditureService;
        }
        public async Task<IActionResult> ViewUserProfile(int id)
        {
            var user = await _userService.GetUserDetails(id);
            return View(user);
        }
        
        [HttpGet]
        public async  Task<IActionResult> UpdateUser(int id)
        {
            if (id == null)
            {
                return NotFound("No user");
            }
            var userToUpdate = await _userService.GetUserById(id);
            var userreuqest = new UserUpdateRequestModel
            {
                Id = userToUpdate.Id,
                Email = userToUpdate.Email,
                FullName = userToUpdate.FullName
            };
            return View(userreuqest);
        }
        [HttpPost,ActionName("UpdateUser")]
        public async Task<IActionResult> UpdateUserProfile(UserUpdateRequestModel model)
        {
            var update = await _userService.UpdateUser(model);
            return LocalRedirect("~/");
        }
        //Add
        [HttpGet]
        public IActionResult AddIncome(int id)
        {
            var addrequest = new IncomeRequestModel
            {
                UserId = id,
            };
            return View(addrequest);
        }
        [HttpPost]
        public async Task<IActionResult> AddIncome(IncomeRequestModel model)
        {
            var income = await _incomeService.AddIncomeRecord(model);
            return LocalRedirect("~/");
        }
        [HttpGet]
        public IActionResult AddExpenditure(int id)
        {
            var addrequest = new ExpendRequestModel
            {
                UserId = id,
            };
            return View(addrequest);
        }
        [HttpPost]
        public async Task<IActionResult> AddExpenditure(ExpendRequestModel model)
        {
            var expend = await _expenditureService.AddExpendRecord(model);
            return LocalRedirect("~/");
        }
        //Delete
        [HttpGet]
        public async Task<IActionResult> Delete(int id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var user = await _userService.GetUserById(id);
            if (user == null)
            {
                return NotFound();
            }
            return View(user);
        }
        [HttpPost, ActionName("Delete")]
        public async Task<IActionResult> DeleteConfirm(int id)
        {
            var movie = await _userService.DeleteUser(id);
            return LocalRedirect("~/");
        }
    }
}