using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GameShop.UI.MVC.Startup))]
namespace GameShop.UI.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
