using FlowerGenerator.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace FlowerGenerator.Classes
{
    public static class Utility
    {
        public enum MessageStatus { Unknown, Excluded, Success, Failed };

        public static String ConnectionString
        {
            get
            {
                return WebConfigurationManager.AppSettings["ConnectionString"];
            }
        }

        private static User _currentUser;
        public static User CurrentUser
        {
            get
            {
                if (_currentUser == null)
                    _currentUser = HttpContext.Current.Session["User"] as User;
                return _currentUser;
            }
            set
            {
                HttpContext.Current.Session["User"] = value;
                _currentUser = value;
            }
        }

        public static void LogError(string message, Exception ex)
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                connection.Open();
                using (SqlCommand cmd = new SqlCommand("LogError", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(AddSqlParameter("@UserName", SqlDbType.Int, CurrentUser.UserName));
                    cmd.Parameters.Add(AddSqlParameter("@Message", SqlDbType.VarChar, message));
                    cmd.Parameters.Add(AddSqlParameter("@Error", SqlDbType.VarChar, ex.ToString()));

                    var results = cmd.ExecuteNonQuery();
                }
                connection.Close();
            }
        }

        public static SqlParameter AddSqlParameter(String parameterName, SqlDbType dataType, Object value)
        {
            return new SqlParameter()
            {
                ParameterName = parameterName,
                SqlDbType = dataType,
                Value = value
            };
        }
    }
}