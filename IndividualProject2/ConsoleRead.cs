using Microsoft.OData.Edm;
using System;
using System.Collections.Generic;

namespace IndividualProject2
{
    public static class ConsoleRead
    {
        //__________Function Members________________________________________________________________
        public static string SetVarchar(int maxlen, int minlen = 0)
        {
            string returnval;
            do
            {
                returnval = Console.ReadLine();
                if (returnval.Length <= maxlen && returnval.Length >= minlen)
                    return returnval;
            } while (true);
        }
        public static int SetInt(bool unsign = false, int size = int.MaxValue)
        {
            int returnval;
            do
            {
                if (int.TryParse(Console.ReadLine(), out returnval))
                    if (Math.Abs(returnval) <= Math.Abs(size))
                    {
                        if ((unsign && returnval >= 0) || (!unsign))
                            return returnval;
                    }
            } while (true);
        }
        public static double SetDouble(bool unsign = false, double size = double.MaxValue)
        {
            double returnval;
            do
            {
                if (double.TryParse(Console.ReadLine(), out returnval))
                    if (Math.Abs(returnval) <= Math.Abs(size))
                    {
                        if ((unsign && returnval >= 0) || (!unsign))
                            return returnval;
                    }
            } while (true);
        }
        public static Date SetDate(bool isfuture=false)
        {
            Date returnval;
            do
            {
                if (Date.TryParse(Console.ReadLine(), out returnval))
                    if ((!isfuture && returnval < Date.Now) || (isfuture && returnval > Date.Now))
                        return returnval;
            } while (true);
        }
        public static DateTime SetDateTime(bool isfuture = true)
        {
            DateTime returnval;
            do
            {
                if (DateTime.TryParse(Console.ReadLine(), out returnval))
                    if ((!isfuture && returnval < DateTime.Now) || (isfuture && returnval > DateTime.Now))
                        return returnval;
            } while (true);
        }
        public static bool ReadTwoIntegers(out string a, out string b)
        {
            a = ""; b = "";

            string stream = Console.ReadLine();
            if (stream == "") return false;

            string[] init_result = stream.Split(' ');
            List<string> clean_res = new List<string>();

            //Ξεδιαλέγει τα αποτελέσματα από κενά strings που προκύπτουν από πολλαπλό space
            for (int i=0; i<init_result.Length; i++)
                if (init_result[i] != "") clean_res.Add(init_result[i]);


            //Περιπτώσεις που η συνάρτηση επιστρέφει false
            if (clean_res.Count != 2) return false;
            int res1, res2;
            if (!(int.TryParse(clean_res[0], out res1) && int.TryParse(clean_res[1], out res2)))
                return false;

            a = clean_res[0]; b = clean_res[1];
            return true;
        }
    }
}
