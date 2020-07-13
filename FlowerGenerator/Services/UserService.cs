using FlowerGenerator.Classes;
using FlowerGenerator.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FlowerGenerator.Services
{
    public static class UserService
    {
        public static User LoginUser(string userName, string password)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(Utility.ConnectionString))
                {
                    connection.Open();
                    using (SqlCommand cmd = new SqlCommand("GetUser", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add(Utility.AddSqlParameter("@UserName", SqlDbType.VarChar, userName));
                        cmd.Parameters.Add(Utility.AddSqlParameter("@Password", SqlDbType.VarChar, password));

                        using (var returnData = cmd.ExecuteReader())
                        {
                            if (returnData.HasRows)
                            {
                                returnData.Read();
                                var userId = returnData.GetInt32(0);
                                var name = returnData.GetString(1);
                                var emailAddress = returnData.GetString(2);
                                var phoneNumber = returnData.GetString(3);

                                var user = new User(userName, userId, name, emailAddress, phoneNumber);
                                return user;
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Utility.LogError("Error Creating User", ex);
            }

            return null;
        }
    }
}