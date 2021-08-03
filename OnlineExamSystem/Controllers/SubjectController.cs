using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataModel;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ServicesClasseslibrary.Interface;

namespace OnlineExamSystem.Controllers
{
    public class SubjectsController : Controller
    {
      
        private readonly ISubjectsService _SubjectsService;

        public SubjectsController(ISubjectsService SubjectsService)
        {

            _SubjectsService = SubjectsService;
        }

        // GET: Subjects
        public IActionResult Index()
        {
            return View(_SubjectsService.list());
        }

        // GET: Subjects/Details/5


        // GET: Subjects/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Subjects/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(SubjectDataModel Subjects)
        {
            if (ModelState.IsValid)
            {
                _SubjectsService.Add(Subjects);
                return RedirectToAction(nameof(Index));
            }
            return View(Subjects);
        }

        // GET: Subjects/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var Subjects = _SubjectsService.GetById((int)id);
            if (Subjects == null)
            {
                return NotFound();
            }
            return View(Subjects);
        }

        // POST: Subjects/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, SubjectDataModel Subjects)
        {
            if (id != Subjects.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _SubjectsService.Edit(Subjects);
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (_SubjectsService.GetById(Subjects.Id) == null)
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
            return View(Subjects);
        }

        // GET: Subjects/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var Subjects = _SubjectsService.GetById((int)id);
            if (Subjects == null)
            {
                return NotFound();
            }

            return View(Subjects);
        }

        // POST: Subjects/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            _SubjectsService.Delete((int)id);
            return RedirectToAction(nameof(Index));
        }
    }
    }
