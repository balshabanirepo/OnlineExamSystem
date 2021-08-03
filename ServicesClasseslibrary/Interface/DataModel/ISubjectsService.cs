using DataModel;
using System;
using System.Collections.Generic;
using System.Text;

namespace ServicesClasseslibrary.Interface
{
    public interface ISubjectsService
    {
        void Add(SubjectDataModel Subjects);
        void Edit(SubjectDataModel model);

        void Delete(int id);

        SubjectDataModel GetById(int id);

        List<SubjectDataModel> list();
    }
}
