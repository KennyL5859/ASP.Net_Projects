using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Demo42Prime
/// </summary>
public class Demo42Prime
{    
    public Demo42Prime()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static bool IsPrime(int number)
    {
        for (int count = 2; count < number; count++)
        {
            if (number % count == 0)
                return false;
        }
        return true;
    }
}