using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace DataRepository.GateWay
{
    public class RepositoryGateWay<TModelRepository>  where TModelRepository : class
    {
        DbConext dbConext = DbConext.GetContextInstance();

       


      

        

        
      

       

       internal void Add(IRepository IRepository)
        {
            dbConext.Entry(IRepository).State = EntityState.Added;

            dbConext.SaveChanges();
        }

        internal void Edit(IRepository IRepository, IRepository withnewvalues)
        {
            dbConext.Entry(IRepository).State = EntityState.Detached;

            dbConext.Entry(withnewvalues).State = EntityState.Modified;
            dbConext.SaveChanges();
        }

        internal void Delete(IRepository IRepository)
        {
            dbConext.Entry(IRepository).State = EntityState.Deleted;

            dbConext.SaveChanges();
        }

        internal TModelRepository GetById(Expression<Func<TModelRepository, bool>> predicate)
        {
            return dbConext.Set<TModelRepository>().Where(predicate).FirstOrDefault();
        }
        internal List<TModelRepository> List(Expression<Func<TModelRepository, bool>> predicate, params Expression<Func<TModelRepository, object>>[] includeProperties)
        {

           

            return (includeProperties.Aggregate
               (dbConext.Set<TModelRepository>().Where(predicate), (current, includeProperty) => current.Include(includeProperty)).ToList());
        }
        internal List<TModelRepository> List(Expression<Func<TModelRepository, bool>> predicate)
        {
            return dbConext.Set<TModelRepository>().Where(predicate).ToList();
        }
        internal List<TModelRepository> List()
        {
            return dbConext.Set<TModelRepository>().ToList();
        }
      
    }
    
}
