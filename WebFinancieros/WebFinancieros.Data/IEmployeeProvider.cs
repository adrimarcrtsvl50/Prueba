using System;
using System.Collections.Generic;
using System.Text;

namespace WebFinancieros.Data
{
    public interface IEmployeeProvider
    {
        IEnumerable<Employee> Get { get; }
    }
}
