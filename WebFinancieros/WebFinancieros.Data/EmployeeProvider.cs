using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using Dapper;

namespace WebFinancieros.Data
{
   
    public class EmployeeProvider : IEmployeeProvider
    {
        private readonly string connectionString;

        public EmployeeProvider(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public IEnumerable<Employee> Get
        {
            get
            {
                IEnumerable<Employee> employee = null;
                using (var connection = new SqlConnection(connectionString))
                {
                    employee = connection.Query<Employee>("select id, Primer_Nombre, Segundo_Nombre,Primer_Apellido,Segundo_Apellido,tipo_de_documento,N_documento,Direccion,Telefono,Email from Employee");
                }
                return employee;

            }
        }
    }
}
