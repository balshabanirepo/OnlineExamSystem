using DataModel;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataRepository.DataRepositoryEntities.DataRepositoryOperationsInterface
{
   public interface ISubjectsOperation
    {
        void Add(SubjectDataModel Subject);
        void Edit(SubjectDataModel Subject);



        void Delete(int id);


        SubjectDataModel GetById(int id);

        List<SubjectDataModel> list();
    }
}
