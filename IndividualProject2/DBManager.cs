using Microsoft.OData.Edm;
using System;
using System.Collections.Generic;
using System.Linq;

namespace IndividualProject2
{
    public sealed class DBManager
    {
        //__________Members________________________________________________________________
        private PrivateSchoolDBEntities dbContext;

        //__________Printing Function-members_________________________________________________________
        public void Print_Students()
        {
            var queryStd = from c in dbContext.Students select c;
            Console.WriteLine("The students will be presented in the following format:\n" +
                "ID : First Name : Last Name : Date of Birth : Tuition Fees.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");
            Print_Students(queryStd);
        }
        public void Print_Students(IQueryable<Student> queryStd)
        {
            if (!dbContext.Students.Any())
            {
                Console.WriteLine("No students to print.");
                return;
            }

            foreach (var item in queryStd)
            {
                Console.Write($"{item.id} : {item.firstName} : {item.lastName} : {(Date)item.dateOfBirth}");
                if (item.tuitionFees!=null) Console.Write($" : {item.tuitionFees}");
                Console.WriteLine();
            }
        }
        public void Print_Students(ICollection<Student> queryStd)
        {
            if (!dbContext.Students.Any())
            {
                Console.WriteLine("No students to print.");
                return;
            }

            foreach (var item in queryStd)
            {
                Console.Write($"{item.id} : {item.firstName} : {item.lastName} : {(Date)item.dateOfBirth}");
                if (item.tuitionFees!=null) Console.Write($" : {item.tuitionFees}");
                Console.WriteLine();
            }
        }
        public void Print_Trainers()
        {
            var queryTr = from c in dbContext.Trainers select c;
            Console.WriteLine("The trainers will be presented in the following format:\n" +
                "ID : First Name : Last Name : subject.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");
            Print_Trainers(queryTr);
        }
        public void Print_Trainers(ICollection<Trainer> queryTr)
        {
            if (!dbContext.Trainers.Any())
            {
                Console.WriteLine("There are no trainers to print.");
                return;
            }

            foreach (var item in queryTr)
            {
                Console.Write($"{item.id} : {item.firstName} : {item.lastName}");
                if (item.subject != null) Console.Write($" : {item.subject}");
                Console.WriteLine();
            }
        }
        public void Print_Trainers(IQueryable<Trainer> queryTr)
        {
            if (!dbContext.Trainers.Any())
            {
                Console.WriteLine("There are no trainers to print.");
                return;
            }

            foreach (var item in queryTr)
            {
                Console.Write($"{item.id} : {item.firstName} : {item.lastName}");
                if (item.subject != null) Console.Write($" : {item.subject}");
                Console.WriteLine();
            }
        }
        public void Print_Courses()
        {
            var queryCr = from c in dbContext.Courses select c;
            Console.WriteLine("The courses will be presented in the following format:\n" +
                "ID : title : stream : type : start date : end date.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");
            Print_Courses(queryCr);
        }
        public void Print_Courses(ICollection<Course> queryCr)
        {
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("There are no courses to print.");
                return;
            }

            foreach (var item in queryCr)
            {
                Console.Write($"{item.id} : {item.title}");
                if (item.stream != null) Console.Write($" : {item.stream}");
                if (item.type != null) Console.Write($" : {item.type}");
                if (item.start_date != null) Console.Write($" : {(Date)item.start_date}");
                if (item.end_date != null) Console.Write($" : {(Date)item.end_date}");
                Console.WriteLine();
            }
        }
        public void Print_Courses(IQueryable<Course> queryCr)
        {
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("There are no courses to print.");
                return;
            }

            foreach (var item in queryCr)
            {
                Console.Write($"{item.id} : {item.title}");
                if (item.stream != null) Console.Write($" : {item.stream}");
                if (item.type != null) Console.Write($" : {item.type}");
                if (item.start_date != null) Console.Write($" : {(Date)item.start_date}");
                if (item.end_date != null) Console.Write($" : {(Date)item.end_date}");
                Console.WriteLine();
            }
        }
        public void Print_Assignments()
        {
            var queryAss = from c in dbContext.Assignments select c;
            Console.WriteLine("The assignments will be presented in the following format:\n" +
                "ID : title : description : date and time of deadline : maximum oral mark : maximum total mark.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");
            Print_Assignments(queryAss);
        }
        public void Print_Assignments(ICollection<Assignment> queryAss)
        {
            if (!dbContext.Assignments.Any())
            {
                Console.WriteLine("There are no assignments to print.");
                return;
            }

            foreach (var item in queryAss)
            {
                Console.Write($"{item.id}");
                if (item.title != null) Console.Write($" : {item.title}");
                if (item.subDateTime != null) Console.Write($" : {(Date)item.subDateTime}");
                if (item.oralMark != null) Console.Write($" : {item.oralMark}");
                if (item.totalMark != null) Console.Write($" : {item.totalMark}");
                if (item.description != null) Console.Write($"\nDescription: {item.description}");
                Console.WriteLine();
            }
        }
        public void Print_Assignments(IQueryable<Assignment> queryAss)
        {
            if (!dbContext.Assignments.Any())
            {
                Console.WriteLine("There are no assignments to print.");
                return;
            }

            foreach (var item in queryAss)
            {
                Console.Write($"{item.id}");
                if (item.title != null) Console.Write($" : {item.title}");
                if (item.subDateTime != null) Console.Write($" : {(Date)item.subDateTime}");
                if (item.oralMark != null) Console.Write($" : {item.oralMark}");
                if (item.totalMark != null) Console.Write($" : {item.totalMark}");
                if (item.description != null) Console.Write($"\nDescription: {item.description}");
                Console.WriteLine();
            }
        }
        public void Print_StudentsPerCourse()
        {
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("There are no courses to print.");
                return;
            }

            Console.WriteLine("The courses will be presented in the following format:\n" +
                "ID : title.\n" +
                "The students will be presented in the following format:\n" +
                "ID : First Name : Last Name : Date of Birth : Tuition Fees.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");

            foreach (var item in queryCr)
            {
                Console.WriteLine($"Students enrolled in {item.id}: {item.title}:\n");
                Print_Students(item.Students);
                Console.WriteLine("\n\n");
            }
        }
        public void Print_TrainersPerCourse()
        {
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("There are no courses to print.");
                return;
            }

            Console.WriteLine("The courses will be presented in the following format:\n" +
                "ID : title.\n" +
                "The trainers will be presented in the following format:\n" +
                "ID : First Name : Last Name : subject.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");

            foreach (var item in queryCr)
            {
                Console.WriteLine($"Trainers teaching at {item.id}: {item.title}:\n");
                Print_Trainers(item.Trainers);
                Console.WriteLine("\n\n");
            }
        }
        public void Print_AssignmentsPerCourse()
        {
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("There are no courses to print.");
                return;
            }

            Console.WriteLine("The courses will be presented in the following format:\n" +
                "ID : title.\n" +
                "The assignments will be presented in the following format:\n" +
                "ID : title : description : date and time of deadline : maximum oral mark : maximum total mark.\n" +
                "Nullable fields will be displayed only when they hold a value.\n\n");

            foreach (var item in queryCr)
            {
                Console.WriteLine($"Assignments assigned in {item.id}: {item.title}:\n");
                var queryAss = from a in dbContext.Assignments
                               join ca in dbContext.Course_has_Assignment
                               on a.id equals ca.Assignment_id
                               where ca.Course_id == item.id
                               select a;
                Print_Assignments(queryAss);
                Console.WriteLine("\n\n");
            }
        }

        //__________Inserting Function-members________________________________________________________
        public bool Populate(uint std_no = 100, uint cr_no = 10, uint tr_no = 15, uint ass_no = 15)
        {
            //Επιστρέφει false αν υπήρχαν ήδη εγγραφές
            //if (dbContext.Courses.Any()) return false; TODO uncomment them
            //if (dbContext.Trainers.Any()) return false;
            //if (dbContext.Assignments.Any()) return false;
            //if (dbContext.Students.Any()) return false;

            RandomData rd = new RandomData();

            //Προσθέτει μαθήματα
            for (int i = 0; i < cr_no; i++)
            {
                string _title, _stream, _type;
                rd.RandomCourseData(out _title, out _stream, out _type);
                DateTime start = rd.RandomFutureDate();
                DateTime end = rd.RandomFutureDate();
                if (end < start)
                {
                    DateTime temp = start;
                    start = end;
                    end = temp;
                }
                Course cr = new Course()
                {
                    title = _title,
                    stream = _stream,
                    type = _type,
                    start_date = start,
                    end_date = end
                };
                dbContext.Courses.Add(cr);
            }
            dbContext.SaveChanges();
            var queryCr = from c in dbContext.Courses select c;
            //Προσθέτει μαθητές
            for (int i = 0; i < std_no; i++)
            {
                string fname, sname;
                rd.RandomFullName(out fname, out sname);
                Student std = new Student()
                {
                    firstName = fname,
                    lastName = sname,
                    dateOfBirth = rd.RandomPastDate(),
                    tuitionFees = (decimal?)rd.RandomFees()
                };
                dbContext.Students.Add(std);
                foreach (var item in queryCr)
                    if (rd.RandomNumber((int)std_no / (int)cr_no / 2) == 0)
                        std.Courses.Add(item);
            }
            //Προσθέτει εκπαιδευτές
            for (int i = 0; i < tr_no; i++)
            {
                string fname, sname, sub;
                rd.RandomFullName(out fname, out sname);
                rd.RandomCourseData(out sub);
                Trainer tr = new Trainer()
                {
                    firstName = fname,
                    lastName = sname,
                    subject = sub
                };
                dbContext.Trainers.Add(tr);
                foreach (var item in queryCr)
                    if (rd.RandomNumber((int)cr_no/2) == 0)
                        tr.Courses.Add(item);
            }
            dbContext.SaveChanges();
            //Προσθέτει εργασίες
            for (int i = 0; i < ass_no; i++)
            {
                Assignment ass = new Assignment()
                {
                    title = "Auto-generated title",
                    description = rd.Gibberish(50),
                    subDateTime = (Date?)rd.RandomFutureDate(),
                    oralMark = 100,
                    totalMark = 100
                };
                dbContext.Assignments.Add(ass);
                foreach (var item in queryCr)
                    if (rd.RandomNumber((int)cr_no) == 0)
                    {
                        Course_has_Assignment cr_ass = new Course_has_Assignment()
                        {
                            Assignment_id = ass.id,
                            Course_id = item.id
                        };
                        dbContext.Course_has_Assignment.Add(cr_ass);
                        cr_ass.Course = item;
                        cr_ass.Assignment = ass;
                        foreach (var s in item.Students)
                        {
                            Student_gets_Assignment std_ass = new Student_gets_Assignment()
                            {
                                Student_id = s.id,
                                Course_id = cr_ass.Course_id,
                                Assignment_id = cr_ass.Assignment_id
                            };
                            dbContext.Student_gets_Assignment.Add(std_ass);
                            std_ass.Student = s;
                            std_ass.Course_has_Assignment = cr_ass;
                        }
                    }
            }
            dbContext.SaveChanges();



            return true;
        }
        public void InsertStudent()
        {
            Console.WriteLine("Type a first name between 1 and 50 characters:");
            string fname = ConsoleRead.SetVarchar(50, 1);

            Console.WriteLine("Type a last name between 1 and 50 characters:");
            string sname = ConsoleRead.SetVarchar(50, 1);

            Console.WriteLine("Type a valid date of birth. The date must be before today:");
            Date birthdate = ConsoleRead.SetDate();

            double? fees;
            Console.WriteLine("If you want to set tuition fees for this student, press Y. Otherwise no fees will be inserted.");
            string answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes") 
            {
                Console.WriteLine("Type tuition fees for the student:");
                fees = ConsoleRead.SetDouble(true);
            }
            else
            {
                fees = null;
            }

            Student std = new Student()
            {
                firstName = fname,
                lastName = sname,
                dateOfBirth = birthdate,
                tuitionFees = (decimal?)fees
            };
            dbContext.Students.Add(std);
            dbContext.SaveChanges();
        }
        public void InsertTrainer()
        {
            Console.WriteLine("Type a first name between 1 and 50 characters:");
            string fname = ConsoleRead.SetVarchar(50, 1);

            Console.WriteLine("Type a last name between 1 and 50 characters:");
            string sname = ConsoleRead.SetVarchar(50, 1);

            string sub;
            Console.WriteLine("If you want to set subject for this trainer, press Y. Otherwise no subject will be inserted.");
            string answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type subject:");
                sub = ConsoleRead.SetVarchar(50);
            }
            else
                sub = null;

            Trainer tr = new Trainer()
            {
                firstName = fname,
                lastName = sname,
                subject = sub
            };
            dbContext.Trainers.Add(tr);
            dbContext.SaveChanges();
        }
        public void InsertAssignment()
        {
            string _title;
            Console.WriteLine("If you want to set title for this assignment, press Y. Otherwise no title will be inserted.");
            string answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type title:");
                _title = ConsoleRead.SetVarchar(50);
            }
            else
                _title = null;

            string desc;
            Console.WriteLine("If you want to set description for this assignment, press Y. Otherwise no description will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type description:");
                desc = ConsoleRead.SetVarchar(500);
            }
            else
                desc = null;

            Date? subdt;
            Console.WriteLine("If you want to set submission deadline for this assignment, press Y. Otherwise no deadline will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type deadline date and time. The date and time must be after the current:");
                subdt = ConsoleRead.SetDateTime();
            }
            else
                subdt = null;

            int? oral;
            Console.WriteLine("If you want to set maximum oral mark for this assignment, press Y. Otherwise no oral mark will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type maximum possible oral mark:");
                oral = ConsoleRead.SetInt(true);
            }
            else
                oral = null;

            int? total;
            Console.WriteLine("If you want to set maximum total mark for this assignment, press Y. Otherwise no total mark will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type maximum possible total mark:");
                total = ConsoleRead.SetInt(true);
            }
            else
                total = null;

            Assignment ass = new Assignment()
            {
                title = _title,
                description = desc.Substring(0, 49),
                subDateTime = subdt,
                oralMark = oral,
                totalMark = total
            };
            dbContext.Assignments.Add(ass);
            dbContext.SaveChanges();
        }
        public void InsertCourse()
        {
            string _title = ConsoleRead.SetVarchar(50);
            
            string _stream;
            Console.WriteLine("If you want to set stream for this course, press Y. Otherwise no stream will be inserted.");
            string answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type stream:");
                _stream = ConsoleRead.SetVarchar(50);
            }
            else
                _stream = null;

            string _type;
            Console.WriteLine("If you want to set type for this course, press Y. Otherwise no type will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type type:");
                _type = ConsoleRead.SetVarchar(50);
            }
            else
                _type = null;

            Date? start;
            Console.WriteLine("If you want to set start date for this course, press Y. Otherwise no start date will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type start date. Note that you will have to assign a future date:");
                start = ConsoleRead.SetDate(true);
            }
            else
                start = null;

            Date? end;
            Console.WriteLine("If you want to set end date for this course, press Y. Otherwise no end date will be inserted.");
            answer = Console.ReadLine().ToLower();
            if (answer == "y" || answer == "yes")
            {
                Console.WriteLine("Type end date. Note that you will have to assign a future date:");
                end = ConsoleRead.SetDate(true);
            }
            else
                end = null;

            Course cr = new Course()
            {
                title = _title,
                stream = _stream,
                type = _type,
                start_date = start,
                end_date = end
            };
            dbContext.Courses.Add(cr);
            dbContext.SaveChanges();
        }
        public void InsertStudentPerCourse()
        {//Υποθέτω ότι μαθητές που εισέρχονται σε μάθημα δεν λαμβάνουν αυτόματα τις εργασίες που έχουν ήδη δωθεί στο μάθημα.
            
            //Όλοι οι μαθητές. Φυσικά τους θέλω >0 το πλήθος.
            var queryStd = from c in dbContext.Students select c;
            if (!dbContext.Students.Any())
            {
                Console.WriteLine("No students to connect to courses.");
                return;
            }

            //Όλα τα μαθήματα. Φυσικά τα θέλω >0 το πλήθος.
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("No courses to assign the students to.");
                return;
            }

            //Τυπώνω μαθητές και μαθήματα για να ξέρει ο χρήστης αυτά που έχει στη διάθεση του.
            Console.WriteLine("The available students are the following:");
            foreach (var stdInfo in queryStd)
                Console.WriteLine("{0}: {1} {2}", stdInfo.id, stdInfo.firstName, stdInfo.lastName);
            Console.WriteLine();

            Console.WriteLine("The available courses are the following:");
            foreach (var crInfo in queryCr)
                Console.WriteLine("{0}: {1}", crInfo.id, crInfo.title);
            Console.WriteLine();

            Console.WriteLine("Type a valid student id and a valid course id to assign that student to that course. Take note that:\n" +
                "The two ID ust be given in that order.\n" +
                "The two ID must be separated by one or more spaces.\n" +
                "In case the student is already enrolled, no changes will occur.");
            string inputa, inputb;
            if (!ConsoleRead.ReadTwoIntegers(out inputa, out inputb))
            {
                Console.WriteLine("Wrong input.");
                return;
            }
            //Η ReadTwoIntegers έχει εξασφαλίσει ότι το Parse πορεί να συμβεί
            int ida = int.Parse(inputa);
            int idb = int.Parse(inputb);

            /*Ορίζω και αρχικοποιώ μια μεταβλητή μαθητή και μαθήματος. Είμαι σίγουρος ότι κι οι δυο πίνακες έχουν 
            τουλάχιστον ένα στοιχείο οπότε τους αρχικοποιώ με το πρώτο - δεν έχει σημασία, απλά για να μη χτυπάει παρακάτω
            ο κώδικας - καθώς οι τιμές τους στη πραγματικότητα δίνονται εντός if.*/
            Student wStd = queryStd.First();
            Course wCr = queryCr.First();
            //Ελέγχει αν το id μαθητή είναι υπαρκτό
            bool found = false;
            foreach (var stdInfo in queryStd)
                if (stdInfo.id == ida)
                {
                    found = !found;
                    wStd = stdInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Wrong input.");
                return;
            }
            //Ελέγχει αν το id μαθήματος είναι υπαρκτό
            found = false;
            foreach (var crInfo in queryCr)
                if (crInfo.id == idb)
                {
                    found = !found;
                    wCr = crInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Wrong input.");
                return;
            }

            //Διατρέχω τα μαθήματα του δωσμένου μαθητή για ήδη υπάρχουσα αντιστοίχηση.
            foreach(var crInfo in wStd.Courses)
                if (crInfo.id == idb)
                {
                    Console.WriteLine("That student has already enrolled given course.");
                    return;
                }

            //Αντιστοιχώ μαθητή-μάθημα στη περίπτωση που όλα πήγαν καλά.
            wStd.Courses.Add(wCr);
            //wCr.Students.Add(wStd); //το ανάποδο γίνεται αυτόματα(;)

            dbContext.SaveChanges();
        }
        public void InsertTrainerPerCourse()
        {
            //Όλοι οι εκπαιδευτές. Φυσικά τους θέλω >0 το πλήθος.
            var queryTr = from c in dbContext.Trainers select c;
            if (!dbContext.Trainers.Any())
            {
                Console.WriteLine("No trainers to connect to courses.");
                return;
            }

            //Όλα τα μαθήματα. Φυσικά τα θέλω >0 το πλήθος.
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("No courses to assign the trainers to.");
                return;
            }

            //Τυπώνω εκπαιδευτές και μαθήματα για να ξέρει ο χρήστης αυτά που έχει στη διάθεση του.
            Console.WriteLine("The available trainers are the following:");
            foreach (var trInfo in queryTr)
                Console.WriteLine("{0}: {1} {2}", trInfo.id, trInfo.firstName, trInfo.lastName);
            Console.WriteLine();

            Console.WriteLine("The available courses are the following:");
            foreach (var crInfo in queryCr)
                Console.WriteLine("{0}: {1}", crInfo.id, crInfo.title);
            Console.WriteLine();

            Console.WriteLine("Type a valid trainer id and a valid course id to assign that trainer to that course. Take note that:\n" +
                "The two ID ust be given in that order.\n" +
                "The two ID must be separated by one or more spaces.\n" +
                "In case the trainer already teaches at that course, no changes will occur.");
            string inputa, inputb;
            if (!ConsoleRead.ReadTwoIntegers(out inputa, out inputb))
            {
                Console.WriteLine("Wrong input.");
                return;
            }
            //Η ReadTwoIntegers έχει εξασφαλίσει ότι το Parse πορεί να συμβεί
            int ida = int.Parse(inputa);
            int idb = int.Parse(inputb);

            /*Ορίζω και αρχικοποιώ μια μεταβλητή εκπαιδευτή και μαθήματος. Είμαι σίγουρος ότι κι οι δυο πίνακες έχουν 
            τουλάχιστον ένα στοιχείο οπότε τους αρχικοποιώ με το πρώτο - δεν έχει σημασία, απλά για να μη χτυπάει παρακάτω
            ο κώδικας - καθώς οι τιμές τους στη πραγματικότητα δίνονται εντός if.*/
            Trainer wTr = queryTr.First();
            Course wCr = queryCr.First();
            //Ελέγχει αν το id εκπαιδευτή είναι υπαρκτό
            bool found = false;
            foreach (var trInfo in queryTr)
                if (trInfo.id == ida)
                {
                    found = !found;
                    wTr = trInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Wrong input.");
                return;
            }
            //Ελέγχει αν το id μαθήματος είναι υπαρκτό
            found = false;
            foreach (var crInfo in queryCr)
                if (crInfo.id == idb)
                {
                    found = !found;
                    wCr = crInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Wrong input.");
                return;
            }

            //Διατρέχω τα μαθήματα του δωσμένου εκπαιδευτή για ήδη υπάρχουσα αντιστοίχηση.
            foreach (var crInfo in wTr.Courses)
                if (crInfo.id == idb)
                {
                    Console.WriteLine("That trainer is already teaching at given course.");
                    return;
                }

            //Αντιστοιχώ εκπαιδευτή-μάθημα στη περίπτωση που όλα πήγαν καλά.
            wTr.Courses.Add(wCr);
            //wCr.Trainers.Add(wTr); //το ανάποδο γίνεται αυτόματα(;)

            dbContext.SaveChanges();
        }
        public void InsertAssignmentPerStudentPerCourse()
        {
            //Όλα τα assignments. Φυσικά τα θέλω >0 το πλήθος.
            var queryAss = from c in dbContext.Assignments select c;
            if (!dbContext.Assignments.Any())
            {
                Console.WriteLine("No assignments to connect to courses.");
                return;
            }

            //Όλα τα μαθήματα. Φυσικά τα θέλω >0 το πλήθος.
            var queryCr = from c in dbContext.Courses select c;
            if (!dbContext.Courses.Any())
            {
                Console.WriteLine("No courses to assign the trainers to.");
                return;
            }

            //Τυπώνω assignments και μαθήματα για να ξέρει ο χρήστης αυτά που έχει στη διάθεση του.
            Console.WriteLine("The available assignments are the following:");
            foreach (var assInfo in queryAss)
                Console.WriteLine("{0}. Title: {1}.", assInfo.id, assInfo.title);
            Console.WriteLine();

            Console.WriteLine("The available courses are the following:");
            foreach (var crInfo in queryCr)
                Console.WriteLine("{0}: {1}", crInfo.id, crInfo.title);
            Console.WriteLine();

            Console.WriteLine("Type a valid assignment id and a valid course id to assign that assignment to that course. Take note that:\n" +
                "The two ID ust be given in that order.\n" +
                "The two ID must be separated by one or more spaces.\n" +
                "In case the assignment is already given at that course, no changes will occur.");
            string inputa, inputb;
            if (!ConsoleRead.ReadTwoIntegers(out inputa, out inputb))
            {
                Console.WriteLine("Wrong input.");
                return;
            }
            //Η ReadTwoIntegers έχει εξασφαλίσει ότι το Parse πορεί να συμβεί
            int ida = int.Parse(inputa);
            int idb = int.Parse(inputb);

            /*Ορίζω και αρχικοποιώ μια μεταβλητή assignment και μαθήματος. Είμαι σίγουρος ότι κι οι δυο πίνακες έχουν 
            τουλάχιστον ένα στοιχείο οπότε τους αρχικοποιώ με το πρώτο - δεν έχει σημασία, απλά για να μη χτυπάει παρακάτω
            ο κώδικας - καθώς οι τιμές τους στη πραγματικότητα δίνονται εντός if.*/
            Assignment wAss = queryAss.First();
            Course wCr = queryCr.First();
            //Ελέγχει αν το id assignment είναι υπαρκτό
            bool found = false;
            foreach (var assInfo in queryAss)
                if (assInfo.id == ida)
                {
                    found = !found;
                    wAss = assInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Given assignment id doesn't exist.");
                return;
            }
            //Ελέγχει αν το id μαθήματος είναι υπαρκτό
            found = false;
            foreach (var crInfo in queryCr)
                if (crInfo.id == idb)
                {
                    found = !found;
                    wCr = crInfo;
                    break;
                }
            if (!found)
            {
                Console.WriteLine("Given course id doesn't exist.");
                return;
            }

            //Διατρέχω το πίνακα Course_has_Assignment για ήδη υπάρχουσα αντιστοίχηση.
            if (dbContext.Course_has_Assignment.Any(a => a.Assignment_id == ida && a.Course_id == idb))
            {
                Console.WriteLine("Given assignment already belongs to given course.");
                return;
            }

            //Αντιστοιχώ assignment-μάθημα στη περίπτωση που όλα πήγαν καλά.
            Course_has_Assignment cr_assNew = new Course_has_Assignment()
            {
                Assignment_id = ida,
                Course_id = idb
            };
            dbContext.Course_has_Assignment.Add(cr_assNew);
            cr_assNew.Course= wCr;
            cr_assNew.Assignment = wAss;

            //Τώρα θα αναθέσω σε όλους τους μαθητές του μαθήματος το assignment αυτό.
            foreach (var std in wCr.Students)
            {
                Student_gets_Assignment i = new Student_gets_Assignment ()
                {
                    Student_id=std.id,
                    Course_id=cr_assNew.Course_id,
                    Assignment_id=cr_assNew.Assignment_id,
                    //Ο μαθητής δεν έχει ακόμη παραδώσει το assignment για να πάρει βαθμούς
                    totalMark = null,
                    oralMark=null
                };
                dbContext.Student_gets_Assignment.Add(i);
                i.Student = std;
                i.Course_has_Assignment = cr_assNew;
            }

            dbContext.SaveChanges();
        }
        
        //__________Constructors etc_____________________________________________________________
        public DBManager()
        {
            dbContext = new PrivateSchoolDBEntities();
        }
    }
}
