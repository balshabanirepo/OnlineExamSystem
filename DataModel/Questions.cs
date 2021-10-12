﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataModel
{
    public class QuestionsDataModel
    {
        public int Id { get; set; }
        [Required]
        public String QuestionText{ get; set; }

        public int DifficultyLevelId { get; set; }

        public int SubjectId { get; set; }


        public IEnumerable<QuestionAnswersDataModel> QuestionAnswersDataModel { get; set; }
}
}
