using System.Web;
using System.Web.Mvc;

namespace ClinicSaintJean_Ori
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}