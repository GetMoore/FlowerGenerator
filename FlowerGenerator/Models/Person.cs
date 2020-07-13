using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlowerGenerator.Models
{
    public class Person
    {

        public Person(int id, string name, string emailAddress, string phoneNumber)
        {
            this.Id = id;
            this.Name = name;
            this.EmailAddress = emailAddress;
            this.PhoneNumber = phoneNumber;
        }

        public int Id;
        public string Name;

        public string EmailAddress;
        public string PhoneNumber;

        public int PaymentOption;
        public string PaymentOptionUserName;

        public Person RecruitedBy;
    }
}