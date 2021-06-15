using DataModel;
using DataRepository.DataRepositoryEntities.DataRepositoryOperationsInterface;
using ServicesClasseslibrary.Interface;
using System;
using System.Collections.Generic;
using System.Text;

namespace ServicesClasseslibrary
{
    public class ExamTypesService : IExamTypesService
    {
        private readonly IExamTypesOperations _examTypesOperations;

        public ExamTypesService(IExamTypesOperations examTypesOperations)
        {
            _examTypesOperations = examTypesOperations;

        }
       public void Add(ExamTypesDataModel examTypes)
        {
            _examTypesOperations.Add(examTypes);
        }
        public void Edit(ExamTypesDataModel examTypes)
        {
            _examTypesOperations.Edit(examTypes);
        }




        public void Delete(int id)
        {
            _examTypesOperations.Delete(id);
        }





        public ExamTypesDataModel GetById(int id)
        {
           return _examTypesOperations.GetById(id);
        }

        public List<ExamTypesDataModel> list()
        {
            return _examTypesOperations.list();
        }

       
    } 
}
