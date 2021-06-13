using DataRepository.GateWay;

using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataRepository
{
    public static class ServiceCollectionExtension
    {
        public static IServiceCollection AddinterfacesonDataRepositoryDepends(this IServiceCollection services)
        {
            services.AddSingleton<IContextGateWay, ContextGateway>();
         

            return services;
        }
    }
}
