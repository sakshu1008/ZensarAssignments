using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeChallenge1
{
    class Program
    {
        public static SqlConnection con;
        public static SqlCommand cmd;
      
        static void Main(string[] args)
        {
            EmpInsert();
        }

        static void EmpInsert()
        {
            try
            {
                con = getConnection();
                Console.WriteLine("Enter Employee Details : ");
                string empname, emptype;
                float empsal;
                Console.WriteLine("Enter Employee Name : ");
                empname = Console.ReadLine();
                Console.WriteLine("Enter Employee Salary : ");
                empsal = float.Parse(Console.ReadLine());
                Console.WriteLine("Enter Employee Type 'C' Or 'P' :");
                emptype = Console.ReadLine();
                cmd = new SqlCommand("execute dbo.empinsert  @empname, @empsal, @emptype");
             
                cmd.Parameters.AddWithValue("@empname", empname);
                cmd.Parameters.AddWithValue("@empsal", empsal);
                cmd.Parameters.AddWithValue("@emptype", emptype);
                cmd.Connection = con;
                int no_ofrows = cmd.ExecuteNonQuery();
                if (no_ofrows > 0)
                {
                    Console.WriteLine("Inserted");
                }
                else
                {
                    Console.WriteLine("Not Inserted");
                }
            }
            catch (SqlException se)
            {
                Console.WriteLine(se.Message);
            }
        }

        static SqlConnection getConnection()
        {
            con = new SqlConnection(@"data source=DESKTOP-MF4KM2R;initial catalog=EmployeeManagement;integrated security=true");
            con.Open();
            return con;
        }
    }
}
