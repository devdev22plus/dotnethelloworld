using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
//using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace dotnethelloworld
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();//.SetCompatibilityVersion(CompatibilityVersion.Version_2_2);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
		if (env.IsDevelopment())
			app.UseDeveloperExceptionPage();

		app.Run(async (context) =>{
			await context.Response.WriteAsync("Hello World\r\n");

			string fileFullPath = env.WebRootPath + "/text.txt";
		
			if ( System.IO.File.Exists(fileFullPath) )
			{
				await context.Response.WriteAsync("[message from text file]\r\n");
				string[] fileDatas = System.IO.File.ReadAllLines(env.WebRootPath + "/text.txt");
				foreach(string i in fileDatas){
					await context.Response.WriteAsync(i);
				}
			}
			else
			{
				await context.Response.WriteAsync("Not found file in : " + fileFullPath + "\r\n for read text file.");
			}
		});
        }
    }
}
