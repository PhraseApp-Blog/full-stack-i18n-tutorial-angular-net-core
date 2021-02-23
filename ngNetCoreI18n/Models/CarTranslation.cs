using System;
using System.Collections.Generic;

#nullable disable

namespace ngNetCoreI18n.Models
{
    public partial class CarTranslation
    {
        public int CarId { get; set; }
        public string Culture { get; set; }
        public string ModelName { get; set; }
        public string CarDescription { get; set; }
    }
}
