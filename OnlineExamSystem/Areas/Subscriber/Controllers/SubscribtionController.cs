using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace OnlineExamSystem.Areas.Subscriber.Controllers
{
   // [Area("Subscriber")]
    public class SubscribtionController : Controller
    {
        public IActionResult SubScribe()
        {
            return View("../Areas/Subscriber/Views/Subscribtion/SubScribe");
        }
    }
}
    