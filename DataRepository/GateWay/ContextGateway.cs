using DataRepository.DataRepositoryEntities;

using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataRepository.GateWay
{
   public class ContextGateway: IContextGateWay
    {
       
        public  RepositoryGateWay<DataRepositoryEntities.Questions> Questions { get; set; }

        public  RepositoryGateWay<QuestionAnswers> QuestionAnswers { get; set; }

        public RepositoryGateWay<DifficultyLevels> DifficultyLevels { get; set; }

        public RepositoryGateWay<ExamTypes> ExamTypes { get; set; }
        private static DbConext dbConext;
        public ContextGateway()
        {
            DifficultyLevels = new RepositoryGateWay<DifficultyLevels>();
            QuestionAnswers = new RepositoryGateWay<QuestionAnswers>();
            DifficultyLevels = new RepositoryGateWay<DifficultyLevels>();
            Questions = new RepositoryGateWay<Questions>();
            ExamTypes = new RepositoryGateWay<ExamTypes>();


        }
       
      

        //private ContextGateway() { }

       
        private static IDbContextTransaction _transaction;



        public  void CreateDatabaseTransaction()
        {
            dbConext = DbConext.GetContextInstance();
            _transaction = dbConext.Database.BeginTransaction();
        }



        public  void Rollback()
        {
            _transaction.Rollback();
        }

        public   void Dispose()
        {
            _transaction.Dispose();
        }

        public  void Commit()
        {
            _transaction.Commit();

        }
    }
}
