using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlowerGenerator.Models
{
    public class User : Person
    {
        public User(string userName, int id, string name, string emailAddress, string phoneNumber) : base(id, name, emailAddress, phoneNumber)
        {
            this.UserName = userName;
        }

        public string UserName;

    }
}