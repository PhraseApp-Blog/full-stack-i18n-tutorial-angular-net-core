using ngNetCoreI18n.Dto;
using ngNetCoreI18n.Interfaces;
using ngNetCoreI18n.Models;
using System.Collections.Generic;
using System.Linq;

namespace ngNetCoreI18n.DataAccess
{
    public class CarDataAccessLayer : ICar
    {
        private CarDBContext db;

        public CarDataAccessLayer(CarDBContext _db)
        {
            db = _db;
        }

        public IEnumerable<CarDto> GetAllCarData(string culture)
        {
            List<CarDto> lstCar = new List<CarDto>();

            List<Car> carDetails = db.Cars?.ToList();

            foreach (Car car in carDetails)
            {
                CarDto item = new CarDto();
                var carData = db.ProductTranslations.FirstOrDefault(x => x.CarId == car.CarId && x.Culture == culture);

                item.CarId = car.CarId;
                item.ModalName = carData?.ProductName;
                item.ImageUrl = car.ImageUrl;
                item.ProductDescription = carData?.ProductDescription;

                lstCar.Add(item);
            }

            return lstCar;
        }
    }
}
