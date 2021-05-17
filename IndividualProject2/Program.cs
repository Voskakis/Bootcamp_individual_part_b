using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IndividualProject2
{
    class Program
    {
        static void Main(string[] args)
        {
            DBManager db = new DBManager();
            do
            {
                Console.WriteLine("\n\nIf the private school is empty and you want to populate it, press 0.\n" +
                    "If you want to print some data about it, press 1.\n" +
                    "If you want to quit, press 2.\n" +
                    "Press any other button to insert or modify data of the private school.");
                switch(Console.ReadLine())
                {
                    case "0":
                        if (!db.Populate())
                            Console.WriteLine("Populate was not permitted. Existing data found.");
                        else
                            Console.WriteLine("The private school's database was populated.");
                        break;
                    case "1":
                        Console.Clear();
                        Console.WriteLine("To print all the students, press 0.\n" +
                            "To print all the trainers, press 1.\n" +
                            "To print all the courses, press 2.\n" +
                            "To print all the assignments, press 3.\n" +
                            "To print all the students per course, press 4.\n" +
                            "To print all the trainers per course, press 5.\n" +
                            "To print all the assignments per course, press 6.\n" +
                            "Press any other button(s) to return to main menu.");
                        switch (Console.ReadLine())
                        {
                            case "0":
                                db.Print_Students();
                                break;
                            case "1":
                                db.Print_Trainers();
                                break;
                            case "2":
                                db.Print_Courses();
                                break;
                            case "3":
                                db.Print_Assignments();
                                break;
                            case "4":
                                db.Print_StudentsPerCourse();
                                break;
                            case "5":
                                db.Print_TrainersPerCourse();
                                break;
                            case "6":
                                db.Print_AssignmentsPerCourse();
                                break;
                            default:
                                break;
                        }
                        break;
                    case "2":
                        return;
                    default:
                        Console.Clear();
                        Console.WriteLine("To insert a student, press 0.\n" +
                            "To insert a trainer, press 1.\n" +
                            "To insert a course, press 2.\n" +
                            "To insert an assignment, press 3.\n" +
                            "To enroll a student to an available course, press 4. " +
                            "Note the student doesn't automatically receive that course's existing assignments.\n" +
                            "To assign a trainer to a course, press 5.\n" +
                            "To hand an assignment to all the students of a course, press 6.\n" +
                            "Press any other button(s) to return to main menu.");
                        switch (Console.ReadLine())
                        {
                            case "0":
                                db.InsertStudent();
                                break;
                            case "1":
                                db.InsertTrainer();
                                break;
                            case "2":
                                db.InsertCourse();
                                break;
                            case "3":
                                db.InsertAssignment();
                                break;
                            case "4":
                                db.InsertStudentPerCourse();
                                break;
                            case "5":
                                db.InsertTrainerPerCourse();
                                break;
                            case "6":
                                db.InsertAssignmentPerStudentPerCourse();
                                break;
                            default:
                                break;
                        }
                        break;
                }
            } while (true);
        }
        
    }
}
