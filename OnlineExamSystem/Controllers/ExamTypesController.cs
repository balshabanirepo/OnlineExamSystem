using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DataRepository.DataRepositoryEntities;
using DataRepository.GateWay;
using ServicesClasseslibrary;
using DataModel;
using ServicesClasseslibrary.Interface;

namespace OnlineExamSystem.Controllers
{
    public class ExamTypesController : Controller
    {
        private readonly IExamTypesService _examTypesService;
        private readonly IDifficultyLevelsService _difficultyLevelsService;

        public ExamTypesController(IExamTypesService examTypesService, IDifficultyLevelsService difficultyLevelsService)
        {
            _examTypesService = examTypesService;
            _difficultyLevelsService = difficultyLevelsService;
        }

        // GET: ExamTypes
        public IActionResult Index()
        {
          var ExamTypesList=  _examTypesService.list();

            return View(ExamTypesList);
        }

      

        // GET: ExamTypes/Create
        public IActionResult Create()
        {
            ViewData["DifficultyLevelId"] = new SelectList(_difficultyLevelsService.list(), "Id", "DifficultyLevelName");
            return View();
        }

        // POST: ExamTypes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(ExamTypesDataModel examTypesDataModel)
        {
            if (ModelState.IsValid)
            {
                _examTypesService.Add(examTypesDataModel);
                return RedirectToAction(nameof(Index));
            }
            ViewData["DifficultyLevelId"] = new SelectList(_difficultyLevelsService.list(), "Id", "DifficultyLevelName");
            return View(examTypesDataModel);
        }

        // GET: ExamTypes/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var examTypes = _examTypesService.GetById((int)id);
            if (examTypes == null)
            {
                return NotFound();
            }
            ViewData["DifficultyLevelId"] = new SelectList(_difficultyLevelsService.list(), "Id", "DifficultyLevelName");
            return View(examTypes);
        }

        // POST: ExamTypes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(ExamTypesDataModel examTypes)
        {
           

            if (ModelState.IsValid)
            {
                try
                {
                    _examTypesService.Edit(examTypes);
                   
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ExamTypesExists(examTypes.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DifficultyLevelId"] = new SelectList(_difficultyLevelsService.list(), "Id", "DifficultyLevelName");
            return View(examTypes);
        }

        // GET: ExamTypes/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var examTypes= _examTypesService.GetById((int)id);
            if (examTypes == null)
            {
                return NotFound();
            }

            return View(examTypes);
        }

        // POST: ExamTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            
            _examTypesService.Delete(id);
            return RedirectToAction(nameof(Index));
        }

        private bool ExamTypesExists(int id)
        {
            return _examTypesService.GetById(id) != null;
        }
    }
}
