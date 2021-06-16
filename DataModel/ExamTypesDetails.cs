using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataModel
{
    public class ExamTypesDetailsDataModel
    {
        public int Id { get; set; }
       
        public int DifficultyLevelId { get; set; }

        public string  DifficultyLevelName { get; set; }
        [Range(0,int.MaxValue)]
        public int NumberOfQuestions { get; set; }



    }
}
