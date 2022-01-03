using DataRepository.DataRepositoryEntities;
using DataRepository.GateWay;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataRepository
{
    public static class IServiceCollectionExtension
    {
        public static IServiceCollection AddinterfacesonDataRepositoryDepends(this IServiceCollection services)
        {
            AppConfiguration configuration = new AppConfiguration();


            string conn = configuration.ConnectionString;
            services.AddDbContext<DbConext>(options =>
            {


                options.UseSqlServer(conn);

            }
            );
            services.AddSingleton<IContextGateWay, ContextGateway>();
            services.AddIdentity<ApplicationUser, IdentityRole>().AddEntityFrameworkStores<DbConext>();

            return services;
        }
    }
}
