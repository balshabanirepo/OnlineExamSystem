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
    public class SubjectsOperations : ISubjectsOperation, IModelMapper<SubjectDataModel>
    {
        IContextGateWay _contextGateWay;
    public SubjectsOperations(IContextGateWay contextGateWay)
    {
        _contextGateWay = contextGateWay;
    }
    //RepositoryGateWay<Subjects> SubjectsRepositoryGateWay = new RepositoryGateWay<Subjects>();


    public void Add(SubjectDataModel Subjects)
    {
        Subject SubjectsInstance = new Subject();
        SubjectsInstance.SubjectName = Subjects.SubjectName;


        _contextGateWay.Subjects.Add(SubjectsInstance);


    }

    public void Delete(int id)
    {
        //Subjects SubjectsInstance = new Subjects();
        //SubjectsInstance = SubjectsRepositoryGateWay.GetById(g => g.Id == id);
        //SubjectsRepositoryGateWay.Delete(SubjectsInstance);
    }

    public void Edit(SubjectDataModel Subjects)
    {
            Subject Subject = new Subject();
            Subject SubjectStoredInDb = _contextGateWay.Subjects.GetById(g => g.Id == Subjects.Id);
            Subject.Id = Subjects.Id;
            Subject.SubjectName = Subjects.SubjectName;
            _contextGateWay.Subjects.Edit(SubjectStoredInDb, Subject);
        }

    public SubjectDataModel GetById(int id)
    {
            Subject SubjectsInstance;
        //SubjectsInstance = new Subjects();
        SubjectsInstance = _contextGateWay.Subjects.GetById(g => g.Id == id);
        //return (SubjectsDataModel) this.Map(SubjectsInstance);

        return new DataModel.SubjectDataModel { Id = SubjectsInstance.Id, SubjectName = SubjectsInstance.SubjectName };
        //return null;
    }

    public List<SubjectDataModel> list()
    {
        //List<SubjectsDataModel> listOfSubjects = SubjectsRepositoryGateWay.List().Select
        //     (s=>new SubjectsDataModel  { Id = s.Id, SubjectName = s.SubjectName }).ToList();
        // return listOfSubjects;
        List<SubjectDataModel> listOfSubjects = _contextGateWay.Subjects.List().Select
             (s => new SubjectDataModel { Id = s.Id, SubjectName = s.SubjectName }).ToList();
        return listOfSubjects;

        // return null;

    }

    public SubjectDataModel Map(IRepository RepoistoryObject)
    {
        //Subjects SubjectsInstance = (Subjects)RepoistoryObject;

        //return new DataModel.SubjectsDataModel { Id = SubjectsInstance.Id, SubjectName = SubjectsInstance.SubjectName };

        return null;
    }

       
   
    }
}
