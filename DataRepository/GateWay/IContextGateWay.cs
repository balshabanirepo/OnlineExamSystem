using DataRepository.DataRepositoryEntities;
using DataRepository.GateWay;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataRepository.GateWay
{
    public interface IContextGateWay
    {
        public RepositoryGateWay<DataRepositoryEntities.Questions> Questions { get; set; }

        public RepositoryGateWay<QuestionAnswers> QuestionAnswers { get; set; }

        public RepositoryGateWay<DifficultyLevels> DifficultyLevels { get; set; }


        public void CreateDatabaseTransaction();



        public void Rollback();

        public void Dispose();
        public void Commit();
    }
}
