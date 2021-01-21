using ngNetCoreI18n.Dto;
using System.Collections.Generic;

namespace ngNetCoreI18n.Interfaces
{
    public interface ICar
    {
        IEnumerable<CarDto> GetAllCarData(string culture);
    }
}
