using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SalgariSite.Startup))]
namespace SalgariSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
