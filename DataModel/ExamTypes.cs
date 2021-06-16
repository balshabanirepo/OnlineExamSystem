using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataModel
{
   public class ExamTypesDataModel
    {
        public int Id { get; set; }
        [Required]
        public String ExamTypeName { get; set; }
        public int DifficultyLevelId { get; set; }
        [Range(1, int.MaxValue)]
        public int NumberOfQuestions { get; set; }

        public List<ExamTypesDetailsDataModel> examTypesDetails { get; set; }
        
    }
}
