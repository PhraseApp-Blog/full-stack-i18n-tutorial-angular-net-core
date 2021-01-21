using Microsoft.AspNetCore.Mvc;
using ngNetCoreI18n.Dto;
using ngNetCoreI18n.Interfaces;
using System.Collections.Generic;

namespace ngNetCoreI18n.Controllers
{
    [Route("api/{culture}/[controller]")]
    [ApiController]
    public class CarController : ControllerBase
    {
        readonly ICar carService;

        public CarController(ICar _carService)
        {
            carService = _carService;
        }

        [HttpGet]
        public IEnumerable<CarDto> Get(string culture)
        {
            return carService.GetAllCarData(culture);
        }
    }
}
