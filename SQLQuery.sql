--A list of all the students
SELECT * FROM [PrivateSchoolDB].[dbo].[Student];

--A list of all the trainers
SELECT * FROM [PrivateSchoolDB].[dbo].[Trainer];

--A list of all the assignments
SELECT * FROM [PrivateSchoolDB].[dbo].[Assignment];

--a list of all the courses
SELECT * FROM [PrivateSchoolDB].[dbo].[Course];

--all the students per course
SELECT cr.[id] as [Course id]
	  ,cr.[title] as [Course Title]
      ,s.[firstName]+' '+s.[lastName] as [Student full name]
      ,s.[dateOfBirth]
      ,s.[tuitionFees] 
	  ,s.[id] as [Student id]
FROM Student AS s, Course_has_Student AS crstd, Course AS cr
WHERE s.id = crstd.Student_id
	  AND crstd.Course_id = cr.id
ORDER BY cr.id;

--all the trainers per course
SELECT cr.[id] as [Course id]
	  ,cr.[title] as [Course Title]
      ,tr.[firstName]+' '+tr.[lastName] as [Trainer full name]
      ,tr.[subject]
	  ,tr.[id] as [Trainer id]
FROM Trainer AS tr, Course_has_Trainer AS crtr, Course AS cr
WHERE tr.id = crtr.Trainer_id
	  AND crtr.Course_id = cr.id
ORDER BY cr.id;

--all the assignments per course
SELECT cr.[id] as [Course id]
	  ,cr.[title] as [Course Title]
	  ,ass.*
FROM Assignment AS ass, Course_has_Assignment AS crass, Course AS cr
WHERE ass.id = crass.Assignment_id
	  AND crass.Course_id = cr.id
ORDER BY cr.id;

--all the assignments per course per student
SELECT 
    std.id, cr.id, ass.*
FROM
    Assignment AS ass,
    Course_has_Assignment AS crass,
    Course AS cr,
    Course_has_Student AS crstd,
    Student AS std
WHERE
    ass.id = crass.Assignment_id
        AND crass.Course_id = cr.id
        AND cr.id = crstd.Course_id
        AND crstd.Student_id = std.id
ORDER BY std.id , cr.id;

--a list of all the students that belong to more than one courses
SELECT
	Count(cr.id) AS [Number of courses],
	s.id, s.firstName, s.lastName, s.dateOfBirth, s.tuitionFees
FROM
	Student AS s
	INNER JOIN Course_has_Student AS crs ON s.id = crs.Student_id
	INNER JOIN Course AS cr ON crs.Course_id = cr.id
GROUP BY
	s.id, firstName, lastName, dateOfBirth, tuitionFees
	HAVING COUNT(cr.id)>1;