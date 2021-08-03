using DataModel;
using DataRepository.DataRepositoryEntities.DataRepositoryOperationsInterface;
using ServicesClasseslibrary.Interface;
using System;
using System.Collections.Generic;
using System.Text;

namespace ServicesClasseslibrary.Implmentation.DataModel
{
    public class SubjectService : ISubjectsService

    {
        private readonly ISubjectsOperation _SubjectsOperations;

        public SubjectService(ISubjectsOperation SubjectsOperations)
        {
            _SubjectsOperations = SubjectsOperations;

        }
        public void Add(SubjectDataModel Subjects)
        {
            _SubjectsOperations.Add(Subjects);
        }

        public void Delete(int id)
        {
            _SubjectsOperations.Delete(id);
        }

        public void Edit(SubjectDataModel model)
        {
            _SubjectsOperations.Edit(model);
        }

        public SubjectDataModel GetById(int id)
        {
            return _SubjectsOperations.GetById(id);

        }

        public List<SubjectDataModel> list()
        {
            return _SubjectsOperations.list();
        }
    }
}
