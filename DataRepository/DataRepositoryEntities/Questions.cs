﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace DataRepository.DataRepositoryEntities
{
    public class Questions:IRepository
    {
        public int Id { get; set; }

        public String QuestionText{ get; set; }
        
        public virtual ICollection<QuestionAnswers> QuestionAnswers { get; set; }

        [ForeignKey("DifficultyLevel")]
        public int DifficultyLevelId { get; set; }


        public virtual DifficultyLevels DifficultyLevel { get; set; }


        [ForeignKey("Subject")]
        public int? SubjectId { get; set; }

        public virtual Subject Subject { get; set; }


        public virtual ICollection<ExamQuestions> ExamQuestions { get; set; }

    }
}
