using System;
using System.Text;

namespace IndividualProject2
{
    sealed class RandomData
    {
        //____________________________Other Members______________________________________________________
        private readonly Random r;

        private static string[] ManSurnames = { "Alexopoulos", "Christoforou", "Doukas", "Hatzis", "Iordanou", "Katopodis", "Metaxas", "Pantazis", "Rousopoulos", "Zafeiridis" };
        private static string[] WomanSurnames = { "Angelopoulou", "Christoforou", "Diamantidi", "Hatzi", "Iordanou", "Karagianni", "Metaxa", "Papa", "Rousopoulou", "Zafeiriou" };
        private static string[] ManNames = { "Giorgos", "Dimitris", "Konstantinos", "Ioannis" };
        private static string[] WomanNames = { "Maria", "Eleni", "Katerina", "Vasiliki" };
        //private static string[] Courses = { "Computer Science", "Data Management", "Software", "Materials& Architecture", "Communications& Networking", "Signal and Data Process" };
        private static string[] Streams =
        {
            "Numerical Analysis", "Graph Theory", "Cryptography",
            "Database System Implementation", "Artificial Intelligence",
            "Compilers", "Parallel Systems",
            "Computer Architecture", "Electronics",
            "Network Management", "Telecommunications",
            "Graphics", "Information Theory"
        };

        //____________________________Utility Functions______________________________________________________
        //Since this class's objects are used, it would be a pity to further call Random where needed. Thus RandomNumber does just that on an existing Random variable
        public int RandomNumber(int n=int.MaxValue)
        {
            return r.Next(n);
        }
        public void RandomFullName(out string name, out string surname)
        {
            if (r.Next() % 2 == 0) //add a man
            {
                name = ManNames[r.Next(ManNames.Length)];
                surname = ManSurnames[r.Next(ManSurnames.Length)];
            }
            else//add a woman
            {
                name = WomanNames[r.Next(WomanNames.Length)];
                surname = WomanSurnames[r.Next(WomanSurnames.Length)];
            }
        }
        public void RandomCourseData(out string name, out string stream, out string type)
        {
            int temp = r.Next(Streams.Length);
            name = name = "DIT";
            if (temp <= 8) name += Convert.ToString(0);
            name += Convert.ToString(temp + 1);
            stream = Streams[temp];
            if (r.Next(2) == 1) type = "part-time";
            else type = "full-time";
        }
        public void RandomCourseData(out string stream)
        {
            stream = Streams[r.Next(Streams.Length)];
        }
        public DateTime RandomFutureDate(int days_forward = 365) //generates a random future date up to x days from now
        {
            DateTime dt = DateTime.Now.AddHours(r.Next(24));
            dt = dt.AddDays(r.Next((int)days_forward));
            return dt;
        }
        public DateTime RandomPastDate(uint years_ago = 18) //generates a random past date from x to x+30 years ago. Default value is 18, ensuring the date of a person generated this way will provide an adult
        {
            DateTime dt = DateTime.Now.AddHours(-r.Next(24));
            dt = dt.AddDays(-r.Next(365));
            dt = dt.AddYears(-r.Next(30) - (int)years_ago);
            return dt;
        }
        public double RandomFees() //returns random double number E [0.00, 50009.00)
        {
            return Math.Round(r.NextDouble() * (10 + r.Next(50000)), 2); //up to two digits after the comma
        }
        public string Gibberish(int maxlength)
        {
            string result = "";
            var words = new[]{"lorem ", "ipsum ", "dolor ", "sit ", "amet ", "consectetuer ", "adipiscing ", "elit ", "sed ", "diam ", "nonummy ", "nibh ", "euismod ", "tincidunt ", "ut ", "laoreet ", "dolore ", "magna ", "aliquam ", "erat "};
            while (result.Length < maxlength)
                result += words[r.Next(words.Length)];
            return result.Substring(0, maxlength - 1);
        }
        //____________________________Constructors___________________________________________________________
        public RandomData()
        {
            r = new Random();
        }
    }
}
