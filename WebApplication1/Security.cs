using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;
namespace WebApplication1
{
    public class Security
    {
        public static string GetHash256(string password, string salt)
        {
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");
            HashAlgorithm algorithm = SHA256.Create();
            byte[] hasPassword = algorithm.ComputeHash(passwordByte);

            return Convert.ToBase64String(hasPassword);
        }
        public static string GetHash512(string password, string salt)
        {
            byte[] passwordByte = ASCIIEncoding.ASCII.GetBytes(password + salt + "SM");
            HashAlgorithm algorithm = SHA512.Create();
            byte[] hasPassword = algorithm.ComputeHash(passwordByte);

            return Convert.ToBase64String(hasPassword);
        }

    }
}