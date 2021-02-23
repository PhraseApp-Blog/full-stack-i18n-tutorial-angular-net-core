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
            List<CarDto> lstCar = new();

            List<Car> carDetails = db.Cars?.ToList();

            foreach (Car car in carDetails)
            {
                CarDto item = new();
                var carData = db.CarTranslations.FirstOrDefault(x => x.CarId == car.CarId && x.Culture == culture);

                if (carData != null)
                {
                    item.CarId = car.CarId;
                    item.ModelName = carData?.ModelName;
                    item.ImageUrl = car.ImageUrl;
                    item.CarDescription = carData?.CarDescription;

                    lstCar.Add(item);
                }
            }

            return lstCar;
        }
    }
}
