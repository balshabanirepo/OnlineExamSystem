using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace DataModel
{
    public class DifficultyLevelsDataModel
    {
        public int Id { get; set; }
        [Required]
        public String DifficultyLevelName { get; set; }
    }
}
