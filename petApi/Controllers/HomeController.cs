using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace petApi.Controllers
{
    [Route("pet/api/[controller]")]
    [ApiController]
    public class HomeController : Controller
    {
        // GET api/values
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Index()
        {
            return new ObjectResult("API SaudePet - Inicializado com sucesso!");
        }
    }
}
