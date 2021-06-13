﻿using DataRepository.DataRepositoryEntities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace DataRepository.GateWay
{
    public class DbConext:DbContext
    {

        private static DbConext dbConext;
        public DbConext()
        {





        }


        internal static DbConext GetContextInstance()
        {
            if (dbConext == null)
            {
                dbConext = new DbConext();
            }
            return dbConext;
        }
        protected  override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
           
            AppConfiguration configuration = new AppConfiguration();

          
            string conn = configuration.ConnectionString;

            optionsBuilder.UseSqlServer(conn);
         
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)

        {

            modelBuilder.Entity<QuestionAnswers>().HasKey(o => o.Id);
            modelBuilder.Entity<ExamTypesDetails>().HasKey(o => o.Id);
            modelBuilder.Entity<ExamTypes>().HasKey(o => o.Id);
            modelBuilder.Entity<DifficultyLevels>().HasKey(o => o.Id);

        }




        public DbSet<Questions> Questions { get; set; }

        public  DbSet<QuestionAnswers> QuestionAnswers { get; set; }

        public DbSet<ExamTypesDetails> ExamTypesDetails { get; set; }

        public DbSet<ExamTypes> ExamTypes { get; set; }

        public DbSet<DifficultyLevels> DifficultyLevels { get; set; }


    }
}
