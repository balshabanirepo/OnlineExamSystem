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

        public void Edit(ExamTypesDataModel examTypesDataModel)
        {
           
            _contextGateWay.ExamTypes.GetById(g=>g.Id==examTypesDataModel.Id);

            _contextGateWay.CreateDatabaseTransaction();



            foreach (ExamTypesDetailsDataModel examTypesDetails in examTypesDataModel.examTypesDetails)
            {
               
                ExamTypesDetails typesDetails = _contextGateWay.ExamTypesDetails.GetById(g => g.Id == examTypesDetails.Id);
                _contextGateWay.ExamTypesDetails.Delete(typesDetails);
                _contextGateWay.ExamTypesDetails.Add(
                    new ExamTypesDetails
                    {
                        DifficultyLevelId = examTypesDetails.DifficultyLevelId,
                        NumberOfQuestions = examTypesDetails.NumberOfQuestions,
                        ExamTypeId = examTypesDataModel.Id
                    });



            }
          

            _contextGateWay.Commit();
        }

        public ExamTypesDataModel GetById(int id)
        {
            ExamTypes examTypes= _contextGateWay.ExamTypes.GetById(gb=>gb.Id==id);
            ExamTypesDataModel examTypesDataModel = this.Map(examTypes);
            return examTypesDataModel;
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
                Id = examTypes.Id,
                ExamTypeName = examTypes.ExamTypeName,
                DifficultyLevelId = examTypes.DifficultyLevelId,
                NumberOfQuestions = examTypes.NumberOfQuestions,
                examTypesDetails = (from etd in
                                   _contextGateWay.ExamTypesDetails.List(w => w.ExamTypeId == examTypes.Id, Exx => Exx.DifficultyLevel).ToList()
                                    select new ExamTypesDetailsDataModel
                                    {
                                        Id = etd.Id,
                                        DifficultyLevelId = etd.DifficultyLevelId,
                                        DifficultyLevelName = etd.DifficultyLevel.DifficultyLevelName,
                                        NumberOfQuestions = etd.NumberOfQuestions
                                    }).ToList()


            };
        }
    }
}
