using DataModel;
using DataRepository.DataRepositoryEntities.DataRepositoryOperationsInterface;
using DataRepository.GateWay;
using DataRepository.ModelMapper.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataRepository.DataRepositoryEntities.DataRepositoryEntityOperationsClasses
{
    
  
    public class ExamTypesOperations : IExamTypesOperations, IModelMapper<ExamTypesDataModel>
    {
        IContextGateWay _contextGateWay;
        public ExamTypesOperations(IContextGateWay contextGateWay)
        {
            _contextGateWay = contextGateWay;
        }
        public void Add(ExamTypesDataModel examTypesDataModel)
        {
            ExamTypes examTypes;
            examTypes = new ExamTypes
            {
                Id = examTypesDataModel.Id,
                ExamTypeName = examTypesDataModel.ExamTypeName,
                DifficultyLevelId = examTypesDataModel.DifficultyLevelId,
                NumberOfQuestions = examTypesDataModel.NumberOfQuestions

            };
            _contextGateWay.CreateDatabaseTransaction();

            _contextGateWay.ExamTypes.Add(examTypes);
            foreach (ExamTypesDetailsDataModel examTypesDetails in examTypesDataModel.examTypesDetails)

                _contextGateWay.ExamTypesDetails.Add(
                    new ExamTypesDetails
                    {
                        DifficultyLevelId = examTypesDetails.DifficultyLevelId,
                        NumberOfQuestions = examTypesDetails.NumberOfQuestions,
                        ExamTypeId = examTypes.Id
                    });
            _contextGateWay.Commit();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public void Edit(ExamTypesDataModel examTypes)
        {
            throw new NotImplementedException();
        }

        public ExamTypesDataModel GetById(int id)
        {
            throw new NotImplementedException();
        }

        public List<ExamTypesDataModel> list()
        {
           List<ExamTypes> examTypes= _contextGateWay.ExamTypes.List();
            List<ExamTypesDataModel> examTypesDataModels;
            examTypesDataModels = (from et in examTypes
                                   select this.Map(et)
                                  ).ToList();

            return examTypesDataModels;
        }

        public ExamTypesDataModel Map(IRepository repository)
        {
            ExamTypes examTypes = (ExamTypes)repository;
            return new ExamTypesDataModel
            {
                Id= examTypes.Id,
                ExamTypeName=examTypes.ExamTypeName,
                DifficultyLevelId=examTypes.DifficultyLevelId,
                NumberOfQuestions=examTypes.NumberOfQuestions

            };
        }
    }
}
