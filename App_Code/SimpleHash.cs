 //This code came from:  http://www.obviex.com/samples/hash.aspx
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

public class SimpleHash
{
    #region createSalt 
    /// This class generates and compares hashes using MD5, SHA1, SHA256, SHA384, 
    /// and SHA512 hashing algorithms.
    /// 
   
    public static byte[] createSalt()
    {
        int minSaltSize = 4;
        int maxSaltSize = 8;
        Random random = new Random();
        int saltSize = random.Next(minSaltSize, maxSaltSize);
        byte[] saltBytes = new byte[saltSize];
        var rng = new System.Security.Cryptography.RNGCryptoServiceProvider();
        rng.GetNonZeroBytes(saltBytes);
        return saltBytes;
    }
    #endregion 
    public static String genreateSHA256Hash(String plainText, byte[] salt)
    {
        if (salt == null)
            salt = createSalt();
        byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
        byte[] plainTextWithSaltBytes = new byte[salt.Length + plainTextBytes.Length];
        for (int i = 0; i < plainTextBytes.Length; i++)
            plainTextWithSaltBytes[i] = plainTextBytes[i];
        for (int i = 0; i < salt.Length; i++)
            plainTextWithSaltBytes[plainTextBytes.Length + i] = salt[i];
        HashAlgorithm hash = new SHA256Managed();
        byte[] hashBytes = hash.ComputeHash(plainTextWithSaltBytes);
        byte[] hashWithSaltBytes = new byte[hashBytes.Length + salt.Length];
        for (int i = 0; i < hashBytes.Length; i++)
            hashWithSaltBytes[i] = hashBytes[i];
        for (int i = 0; i < salt.Length; i++)
            hashWithSaltBytes[hashBytes.Length + i] = salt[i];
        String hashValue = Convert.ToBase64String(hashWithSaltBytes);
        return hashValue;
    }

    public static bool verifyHash(String plainText, String hashValue)
    {
        byte[] hashWithSaltBytes = Convert.FromBase64String(hashValue);
        int hashSizeBytes = (256/8);
        byte[] saltBytes = new byte[hashWithSaltBytes.Length - hashSizeBytes];
        for (int i = 0; i < saltBytes.Length; i++)
            saltBytes[i] = hashWithSaltBytes[hashSizeBytes + i];
        String expectedHashString = genreateSHA256Hash(plainText, saltBytes);
        return (hashValue == expectedHashString);
    }
}