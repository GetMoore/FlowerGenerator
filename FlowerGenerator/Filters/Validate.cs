using FlowerGenerator.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FlowerGenerator.Filters
{
    public class Validate : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (Utility.CurrentUser == null && filterContext.ActionDescriptor.ActionName != "MessageReceived")
                filterContext.Result = new RedirectResult(string.Format("/Account/Login?targetUrl={0}", filterContext.HttpContext.Request.Url.AbsolutePath));
        }
    }
}