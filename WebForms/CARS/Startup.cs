using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CARS.Startup))]
namespace CARS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
