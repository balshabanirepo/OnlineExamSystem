using System;
using System.Collections.Generic;
using System.Text;

namespace DataRepository.DataRepositoryEntities
{
    public class Subject : IRepository
    {
        public int Id { get; set; }

        public String SubjectName { get; set; }
    }
    
}
