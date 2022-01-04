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
   public class QuestionsOperations : IQuestionsOperations, IModelMapper<QuestionsDataModel>
    {
        IContextGateWay _contextGateWay;

        public QuestionsOperations(IContextGateWay contextGateWay)
        {
            _contextGateWay = contextGateWay;
        }
        public void Add(QuestionsDataModel questionsDataModel)
        {
            Questions Question= new Questions
            {
                Id = questionsDataModel.Id,
                QuestionText = questionsDataModel.QuestionText,
                DifficultyLevelId = questionsDataModel.DifficultyLevelId.Value,
                SubjectId= questionsDataModel.SubjectId.Value

            };

            _contextGateWay.CreateDatabaseTransaction();
           _contextGateWay.Questions.Add(Question);
            foreach (QuestionAnswersDataModel questionAnswers in questionsDataModel.QuestionAnswersDataModel)
            {

                _contextGateWay.QuestionAnswers.Add(
                    new QuestionAnswers
                    {
                        Id = questionAnswers.Id,
                        AnswerText = questionAnswers.AnswerText,
                        IsCorrect = questionAnswers.IsCorrext,
                        QuestionId = Question.Id
                    });
            }
            _contextGateWay.Commit();



        }

        public void Delete(int id)
        {
            var q = _contextGateWay.Questions.GetById(g => g.Id == id);
            _contextGateWay.Questions.Delete(q);

        }

        public void Edit(QuestionsDataModel questionsDataModel)
        {
            DataRepository.DataRepositoryEntities.Questions questions1, questions2;
            DataRepositoryEntities.QuestionAnswers answers;

            _contextGateWay.CreateDatabaseTransaction();
            questions1 = new Questions
            {

                Id = questionsDataModel.Id,
                QuestionText = questionsDataModel.QuestionText,
                DifficultyLevelId=questionsDataModel.DifficultyLevelId.Value
            };
            questions2 = _contextGateWay.Questions.GetById(g => g.Id == questionsDataModel.Id);

            _contextGateWay.Questions.Edit(questions2, questions1);

            foreach (QuestionAnswersDataModel questionAnswers in questionsDataModel.QuestionAnswersDataModel)
            {
                answers = _contextGateWay.QuestionAnswers.GetById(g => g.Id == questionAnswers.Id);
                _contextGateWay.QuestionAnswers.Delete(answers);

                _contextGateWay.QuestionAnswers.Add(
                    new QuestionAnswers
                    {
                      
                        AnswerText = questionAnswers.AnswerText,
                        IsCorrect = questionAnswers.IsCorrext,
                        QuestionId = questionsDataModel.Id
                    });
            }
            _contextGateWay.Commit();

            
        }

        public QuestionsDataModel GetById(int id)
        {
            //repositoryGateWay = new RepositoryGateWay<Questions>();
            //RepositoryGateWay<QuestionAnswers> QuestionAnswersRepositoryGateWay;

           Questions questions = _contextGateWay.Questions.GetById(e => e.Id == id);
            //QuestionAnswersRepositoryGateWay = new RepositoryGateWay<QuestionAnswers>();
            questions.QuestionAnswers = _contextGateWay.QuestionAnswers.List(e => e.QuestionId == id);
            return this.Map(questions);
        }

        public List<QuestionsDataModel> list()
        {
            //repositoryGateWay = new RepositoryGateWay<Questions>();
            //RepositoryGateWay<QuestionAnswers> QuestionAnswersRepositoryGateWay = new RepositoryGateWay<QuestionAnswers>();
           
            return _contextGateWay.Questions.List(l=>l.Id==l.Id,i=>i.QuestionAnswers).Select
                (s => new QuestionsDataModel
                {
                    Id = s.Id,
                    QuestionText = s.QuestionText,
                    QuestionAnswersDataModel
                    = (from qa in s.QuestionAnswers
            select new QuestionAnswersDataModel
                       {
                           QuestionId = qa.QuestionId,
                           AnswerText = qa.AnswerText,
                           IsCorrext = qa.IsCorrect,
                           Id = qa.Id

                       }).ToList()

                }).ToList();
           
        }

        public QuestionsDataModel Map(IRepository repository)
        {
            Questions questions = (Questions)repository;
            QuestionsDataModel questionsDataModel =
                new QuestionsDataModel
                {
                    Id = questions.Id,
                    QuestionText = questions.QuestionText,
                    QuestionAnswersDataModel
                    = (from qa in questions.QuestionAnswers
                       select new QuestionAnswersDataModel
                       {
                           QuestionId = qa.QuestionId,
                           AnswerText = qa.AnswerText,
                           IsCorrext = qa.IsCorrect,
                           Id = qa.Id

                       }).ToList()

                };
        return questionsDataModel;


    }
    }
}
