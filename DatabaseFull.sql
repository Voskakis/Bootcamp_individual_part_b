USE [PrivateSchoolDB]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[subDateTime] [datetime] NULL,
	[oralMark] [int] NULL,
	[totalMark] [int] NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[stream] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_has_Assignment]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_has_Assignment](
	[Course_id] [int] NOT NULL,
	[Assignment_id] [int] NOT NULL,
 CONSTRAINT [PK_Course_has_Assignment] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC,
	[Assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_has_Student]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_has_Student](
	[Course_id] [int] NOT NULL,
	[Student_id] [int] NOT NULL,
 CONSTRAINT [PK_Course_has_Student] PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC,
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_has_Trainer]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_has_Trainer](
	[Trainer_id] [int] NOT NULL,
	[Course_id] [int] NOT NULL,
 CONSTRAINT [PK_Course_has_Trainer] PRIMARY KEY CLUSTERED 
(
	[Trainer_id] ASC,
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[dateOfBirth] [date] NOT NULL,
	[tuitionFees] [decimal](8, 2) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_gets_Assignment]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_gets_Assignment](
	[Student_id] [int] NOT NULL,
	[Course_id] [int] NOT NULL,
	[Assignment_id] [int] NOT NULL,
	[oralMark] [int] NULL,
	[totalMark] [int] NULL,
 CONSTRAINT [PK_Student_gets_Assignment] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC,
	[Course_id] ASC,
	[Assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 01-May-21 21:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[subject] [nvarchar](50) NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (49, N'Auto-generated title', N'nonummy sed diam erat ipsum consectetuer laoreet ', CAST(N'2021-06-16T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (50, N'Auto-generated title', N'nibh magna dolore nonummy ipsum elit elit magna u', CAST(N'2021-07-12T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (51, N'Auto-generated title', N'erat adipiscing consectetuer consectetuer elit co', CAST(N'2021-12-27T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (52, N'Auto-generated title', N'amet sed adipiscing consectetuer sit adipiscing e', CAST(N'2021-10-01T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (53, N'Auto-generated title', N'tincidunt elit tincidunt dolor ipsum diam tincidu', CAST(N'2021-05-11T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (54, N'Auto-generated title', N'diam sed nibh diam lorem laoreet dolor adipiscing', CAST(N'2021-09-19T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (55, N'Auto-generated title', N'nibh elit tincidunt ut euismod erat erat lorem ip', CAST(N'2021-06-22T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (56, N'Auto-generated title', N'euismod dolore dolore euismod laoreet consectetue', CAST(N'2021-12-26T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (57, N'Auto-generated title', N'lorem laoreet dolor consectetuer diam amet ut lao', CAST(N'2022-02-04T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (58, N'Auto-generated title', N'lorem ut sed laoreet sit euismod ipsum aliquam el', CAST(N'2022-04-11T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (59, N'Auto-generated title', N'aliquam magna aliquam ut erat amet laoreet tincid', CAST(N'2021-06-10T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (60, N'Auto-generated title', N'sit erat tincidunt erat magna magna amet aliquam ', CAST(N'2021-08-27T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (61, N'Auto-generated title', N'magna ut aliquam elit consectetuer ut sed aliquam', CAST(N'2022-02-11T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (62, N'Auto-generated title', N'magna erat ipsum consectetuer nonummy dolore elit', CAST(N'2022-04-28T00:00:00.000' AS DateTime), 100, 100)
INSERT [dbo].[Assignment] ([id], [title], [description], [subDateTime], [oralMark], [totalMark]) VALUES (63, N'Auto-generated title', N'ut laoreet dolore consectetuer sed amet elit ut c', CAST(N'2022-01-29T00:00:00.000' AS DateTime), 100, 100)
SET IDENTITY_INSERT [dbo].[Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (181, N'DIT01', N'Numerical Analysis', N'part-time', CAST(N'2021-05-30' AS Date), CAST(N'2022-02-11' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (182, N'DIT07', N'Parallel Systems', N'part-time', CAST(N'2021-05-28' AS Date), CAST(N'2021-08-21' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (183, N'DIT10', N'Network Management', N'part-time', CAST(N'2021-12-14' AS Date), CAST(N'2022-02-18' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (184, N'DIT07', N'Parallel Systems', N'part-time', CAST(N'2021-10-03' AS Date), CAST(N'2022-03-24' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (185, N'DIT12', N'Graphics', N'part-time', CAST(N'2021-11-20' AS Date), CAST(N'2022-01-01' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (186, N'DIT12', N'Graphics', N'part-time', CAST(N'2021-10-13' AS Date), CAST(N'2022-04-11' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (187, N'DIT12', N'Graphics', N'full-time', CAST(N'2021-07-03' AS Date), CAST(N'2021-11-22' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (188, N'DIT10', N'Network Management', N'part-time', CAST(N'2021-08-27' AS Date), CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (189, N'DIT13', N'Information Theory', N'part-time', CAST(N'2021-07-07' AS Date), CAST(N'2021-11-14' AS Date))
INSERT [dbo].[Course] ([id], [title], [stream], [type], [start_date], [end_date]) VALUES (190, N'DIT08', N'Computer Architecture', N'full-time', CAST(N'2022-01-16' AS Date), CAST(N'2022-03-28' AS Date))
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (183, 49)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (184, 49)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (184, 56)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (185, 52)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (185, 57)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (186, 54)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (186, 55)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (187, 51)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (188, 50)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (189, 53)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (190, 51)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (190, 55)
INSERT [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id]) VALUES (190, 57)
GO
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1909)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1910)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1914)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1920)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1921)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1928)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1929)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1932)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1944)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1945)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1956)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1962)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1969)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1971)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1980)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1981)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1984)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1989)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (181, 1993)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1902)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1908)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1913)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1914)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1916)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1923)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1940)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1952)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1954)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1956)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1964)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1966)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1968)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1976)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1983)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1986)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1991)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (182, 1992)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1908)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1910)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1921)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1925)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1932)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1934)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1940)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1946)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1952)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1965)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1966)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1975)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1979)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (183, 1990)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1903)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1906)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1907)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1911)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1919)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1921)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1937)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1942)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1944)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1946)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1951)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1956)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1958)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1971)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1973)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1974)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1977)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1979)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (184, 1990)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1903)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1906)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1917)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1918)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1919)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1928)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1929)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1935)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1938)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1944)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1945)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1950)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1956)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1957)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1970)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1975)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1976)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1978)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1981)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (185, 1991)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1903)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1908)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1912)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1913)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1915)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1917)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1931)
GO
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1934)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1935)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1937)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1939)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1942)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1948)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1957)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1959)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1962)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1967)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1969)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1974)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1976)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (186, 1991)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1905)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1914)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1917)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1921)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1922)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1925)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1929)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1932)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1936)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1937)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1940)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1943)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1953)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1964)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1966)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1968)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1972)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1975)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1978)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (187, 1989)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1924)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1930)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1938)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1947)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1948)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1950)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1957)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1958)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1961)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1967)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1970)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1976)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1978)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1981)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1983)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1987)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (188, 1988)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1902)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1904)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1905)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1913)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1916)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1917)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1923)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1926)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1928)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1930)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1933)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1935)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1939)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1941)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1945)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1946)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1948)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1949)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1953)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1955)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1959)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1960)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1963)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1965)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1978)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1985)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1986)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1989)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (189, 1991)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1902)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1903)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1908)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1911)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1913)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1916)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1922)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1927)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1930)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1933)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1944)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1951)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1952)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1965)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1967)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1975)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1976)
GO
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1977)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1979)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1982)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1987)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1991)
INSERT [dbo].[Course_has_Student] ([Course_id], [Student_id]) VALUES (190, 1993)
GO
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (271, 184)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (272, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (272, 186)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (272, 187)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (273, 182)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (274, 181)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (274, 187)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (275, 183)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (275, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (276, 183)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (276, 184)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (276, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (276, 186)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (277, 190)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (278, 187)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (278, 189)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (279, 187)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (279, 190)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (280, 182)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (281, 184)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (281, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (281, 189)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (282, 183)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (282, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (282, 187)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (282, 188)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (282, 189)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (283, 183)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (283, 185)
INSERT [dbo].[Course_has_Trainer] ([Trainer_id], [Course_id]) VALUES (283, 189)
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1902, N'Vasiliki', N'Iordanou', CAST(N'2001-12-07' AS Date), CAST(8355.16 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1903, N'Katerina', N'Angelopoulou', CAST(N'1987-08-15' AS Date), CAST(15735.74 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1904, N'Eleni', N'Hatzi', CAST(N'1983-08-15' AS Date), CAST(22353.10 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1905, N'Dimitris', N'Alexopoulos', CAST(N'1982-06-06' AS Date), CAST(29508.73 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1906, N'Eleni', N'Rousopoulou', CAST(N'1977-07-13' AS Date), CAST(21025.15 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1907, N'Ioannis', N'Katopodis', CAST(N'2002-09-20' AS Date), CAST(4142.62 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1908, N'Eleni', N'Karagianni', CAST(N'1995-02-18' AS Date), CAST(15900.17 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1909, N'Giorgos', N'Rousopoulos', CAST(N'1988-04-09' AS Date), CAST(34495.77 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1910, N'Vasiliki', N'Metaxa', CAST(N'1996-07-07' AS Date), CAST(3049.88 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1911, N'Giorgos', N'Doukas', CAST(N'1989-01-15' AS Date), CAST(353.07 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1912, N'Maria', N'Hatzi', CAST(N'1974-03-11' AS Date), CAST(10048.63 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1913, N'Maria', N'Zafeiriou', CAST(N'1982-09-07' AS Date), CAST(8599.12 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1914, N'Dimitris', N'Rousopoulos', CAST(N'1993-05-08' AS Date), CAST(9939.81 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1915, N'Vasiliki', N'Iordanou', CAST(N'1975-12-07' AS Date), CAST(3323.35 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1916, N'Konstantinos', N'Doukas', CAST(N'1994-07-24' AS Date), CAST(19324.89 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1917, N'Ioannis', N'Christoforou', CAST(N'1983-02-04' AS Date), CAST(159.26 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1918, N'Konstantinos', N'Katopodis', CAST(N'1990-06-07' AS Date), CAST(26482.25 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1919, N'Eleni', N'Zafeiriou', CAST(N'1989-10-16' AS Date), CAST(8953.77 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1920, N'Katerina', N'Diamantidi', CAST(N'1999-05-02' AS Date), CAST(10844.79 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1921, N'Ioannis', N'Zafeiridis', CAST(N'1988-07-25' AS Date), CAST(36942.47 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1922, N'Maria', N'Iordanou', CAST(N'2000-09-01' AS Date), CAST(8855.73 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1923, N'Ioannis', N'Rousopoulos', CAST(N'1999-06-12' AS Date), CAST(5352.75 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1924, N'Dimitris', N'Christoforou', CAST(N'1995-07-23' AS Date), CAST(26194.25 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1925, N'Ioannis', N'Christoforou', CAST(N'1974-03-02' AS Date), CAST(12053.90 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1926, N'Maria', N'Papa', CAST(N'1990-04-10' AS Date), CAST(2083.47 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1927, N'Dimitris', N'Metaxas', CAST(N'1992-09-10' AS Date), CAST(15053.96 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1928, N'Dimitris', N'Metaxas', CAST(N'1997-10-02' AS Date), CAST(4685.21 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1929, N'Maria', N'Karagianni', CAST(N'1980-11-02' AS Date), CAST(3289.06 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1930, N'Giorgos', N'Pantazis', CAST(N'1990-07-23' AS Date), CAST(48.35 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1931, N'Eleni', N'Hatzi', CAST(N'1989-03-03' AS Date), CAST(10780.42 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1932, N'Katerina', N'Zafeiriou', CAST(N'1975-10-17' AS Date), CAST(8985.53 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1933, N'Giorgos', N'Zafeiridis', CAST(N'1984-01-18' AS Date), CAST(5479.56 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1934, N'Eleni', N'Hatzi', CAST(N'2001-04-26' AS Date), CAST(25402.08 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1935, N'Konstantinos', N'Doukas', CAST(N'2000-03-09' AS Date), CAST(24491.50 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1936, N'Dimitris', N'Christoforou', CAST(N'1981-02-09' AS Date), CAST(7292.92 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1937, N'Eleni', N'Hatzi', CAST(N'1997-03-08' AS Date), CAST(13569.00 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1938, N'Maria', N'Iordanou', CAST(N'1992-03-27' AS Date), CAST(42846.03 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1939, N'Giorgos', N'Doukas', CAST(N'1982-01-05' AS Date), CAST(39151.72 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1940, N'Dimitris', N'Hatzis', CAST(N'1998-12-04' AS Date), CAST(7788.12 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1941, N'Dimitris', N'Pantazis', CAST(N'1998-08-29' AS Date), CAST(1242.25 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1942, N'Giorgos', N'Metaxas', CAST(N'1984-08-28' AS Date), CAST(29393.56 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1943, N'Maria', N'Papa', CAST(N'1979-06-09' AS Date), CAST(24314.19 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1944, N'Vasiliki', N'Metaxa', CAST(N'1973-06-09' AS Date), CAST(3227.76 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1945, N'Ioannis', N'Christoforou', CAST(N'1982-09-23' AS Date), CAST(5898.72 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1946, N'Giorgos', N'Doukas', CAST(N'1985-04-21' AS Date), CAST(31152.90 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1947, N'Ioannis', N'Hatzis', CAST(N'1994-06-13' AS Date), CAST(44086.49 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1948, N'Vasiliki', N'Rousopoulou', CAST(N'1984-01-22' AS Date), CAST(20584.44 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1949, N'Dimitris', N'Christoforou', CAST(N'1998-07-15' AS Date), CAST(7486.57 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1950, N'Maria', N'Karagianni', CAST(N'1975-11-02' AS Date), CAST(2047.44 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1951, N'Vasiliki', N'Angelopoulou', CAST(N'1989-01-02' AS Date), CAST(455.47 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1952, N'Katerina', N'Papa', CAST(N'1981-03-09' AS Date), CAST(27868.45 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1953, N'Ioannis', N'Pantazis', CAST(N'1989-09-29' AS Date), CAST(26996.85 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1954, N'Ioannis', N'Pantazis', CAST(N'1983-06-14' AS Date), CAST(362.72 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1955, N'Ioannis', N'Zafeiridis', CAST(N'1994-09-25' AS Date), CAST(28546.05 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1956, N'Vasiliki', N'Angelopoulou', CAST(N'1986-07-08' AS Date), CAST(16250.25 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1957, N'Eleni', N'Hatzi', CAST(N'1994-12-19' AS Date), CAST(25906.78 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1958, N'Dimitris', N'Alexopoulos', CAST(N'2002-07-30' AS Date), CAST(7396.26 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1959, N'Vasiliki', N'Iordanou', CAST(N'1996-03-05' AS Date), CAST(2726.34 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1960, N'Maria', N'Metaxa', CAST(N'1988-01-06' AS Date), CAST(5214.56 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1961, N'Konstantinos', N'Christoforou', CAST(N'1988-02-28' AS Date), CAST(13428.99 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1962, N'Konstantinos', N'Metaxas', CAST(N'1974-02-26' AS Date), CAST(8281.87 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1963, N'Katerina', N'Rousopoulou', CAST(N'1991-04-19' AS Date), CAST(19673.41 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1964, N'Dimitris', N'Katopodis', CAST(N'1997-09-19' AS Date), CAST(11856.48 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1965, N'Ioannis', N'Metaxas', CAST(N'1989-12-20' AS Date), CAST(9136.29 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1966, N'Eleni', N'Zafeiriou', CAST(N'1993-07-14' AS Date), CAST(19529.51 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1967, N'Konstantinos', N'Zafeiridis', CAST(N'2001-07-01' AS Date), CAST(18424.61 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1968, N'Eleni', N'Angelopoulou', CAST(N'1976-01-03' AS Date), CAST(5798.11 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1969, N'Dimitris', N'Hatzis', CAST(N'1982-04-13' AS Date), CAST(14073.55 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1970, N'Katerina', N'Hatzi', CAST(N'1989-09-13' AS Date), CAST(19156.23 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1971, N'Eleni', N'Papa', CAST(N'1984-03-30' AS Date), CAST(9052.40 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1972, N'Konstantinos', N'Christoforou', CAST(N'1983-09-01' AS Date), CAST(4462.48 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1973, N'Maria', N'Christoforou', CAST(N'1987-08-31' AS Date), CAST(7231.30 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1974, N'Konstantinos', N'Pantazis', CAST(N'1990-08-10' AS Date), CAST(14021.37 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1975, N'Konstantinos', N'Alexopoulos', CAST(N'1995-09-24' AS Date), CAST(18363.96 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1976, N'Dimitris', N'Iordanou', CAST(N'1992-02-22' AS Date), CAST(24548.34 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1977, N'Maria', N'Zafeiriou', CAST(N'1976-08-21' AS Date), CAST(11516.64 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1978, N'Katerina', N'Hatzi', CAST(N'1980-04-19' AS Date), CAST(9963.91 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1979, N'Katerina', N'Papa', CAST(N'1981-02-07' AS Date), CAST(5105.94 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1980, N'Vasiliki', N'Christoforou', CAST(N'1989-08-14' AS Date), CAST(4617.26 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1981, N'Maria', N'Hatzi', CAST(N'2001-10-02' AS Date), CAST(9204.11 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1982, N'Vasiliki', N'Angelopoulou', CAST(N'2003-03-04' AS Date), CAST(21115.22 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1983, N'Maria', N'Diamantidi', CAST(N'1994-07-31' AS Date), CAST(3118.58 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1984, N'Giorgos', N'Alexopoulos', CAST(N'1976-04-30' AS Date), CAST(19157.05 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1985, N'Maria', N'Diamantidi', CAST(N'1973-05-30' AS Date), CAST(4395.77 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1986, N'Dimitris', N'Alexopoulos', CAST(N'1998-11-26' AS Date), CAST(6640.55 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1987, N'Maria', N'Angelopoulou', CAST(N'1988-03-05' AS Date), CAST(21599.59 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1988, N'Katerina', N'Rousopoulou', CAST(N'1989-11-17' AS Date), CAST(9.79 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1989, N'Giorgos', N'Christoforou', CAST(N'1987-06-16' AS Date), CAST(16506.67 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1990, N'Eleni', N'Metaxa', CAST(N'1998-06-04' AS Date), CAST(41821.08 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1991, N'Ioannis', N'Pantazis', CAST(N'1986-08-17' AS Date), CAST(9944.36 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1992, N'Maria', N'Christoforou', CAST(N'1975-09-16' AS Date), CAST(27662.76 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1993, N'Katerina', N'Papa', CAST(N'1998-12-10' AS Date), CAST(16159.73 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1994, N'Maria', N'Iordanou', CAST(N'1981-03-15' AS Date), CAST(24849.55 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1995, N'Vasiliki', N'Rousopoulou', CAST(N'1987-11-03' AS Date), CAST(27810.78 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1996, N'Maria', N'Christoforou', CAST(N'2002-06-19' AS Date), CAST(25873.42 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1997, N'Vasiliki', N'Christoforou', CAST(N'1982-08-15' AS Date), CAST(12610.79 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1998, N'Giorgos', N'Rousopoulos', CAST(N'1995-11-15' AS Date), CAST(869.60 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (1999, N'Vasiliki', N'Metaxa', CAST(N'1998-12-05' AS Date), CAST(20403.07 AS Decimal(8, 2)))
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (2000, N'Vasiliki', N'Karagianni', CAST(N'1997-04-26' AS Date), CAST(30766.49 AS Decimal(8, 2)))
GO
INSERT [dbo].[Student] ([id], [firstName], [lastName], [dateOfBirth], [tuitionFees]) VALUES (2001, N'Giorgos', N'Pantazis', CAST(N'1990-12-08' AS Date), CAST(8649.67 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1902, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1902, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1902, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1902, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1903, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1904, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1905, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1905, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1906, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1906, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1906, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1906, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1907, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1907, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1908, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1910, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1911, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1911, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1911, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1911, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1911, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1912, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1912, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1913, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1914, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1915, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1915, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1916, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1916, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1916, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1916, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1917, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1918, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1918, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1919, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1919, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1919, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1919, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1921, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1921, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1921, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1921, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1922, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1922, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1922, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1922, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1923, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1924, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1925, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1925, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1926, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1927, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1927, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1927, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1928, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1928, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1928, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1929, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1929, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1929, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1930, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1930, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1930, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1930, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1930, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1931, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1931, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1932, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1932, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1933, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1933, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1933, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1933, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1934, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1934, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1934, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1935, 185, 52, NULL, NULL)
GO
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1935, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1935, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1935, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1935, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1936, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1937, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1937, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1937, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1937, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1937, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1938, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1938, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1938, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1939, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1939, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1939, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1940, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1940, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1941, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1942, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1942, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1942, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1942, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1943, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1944, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1945, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1945, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1945, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1946, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1946, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1946, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1946, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1947, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1948, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1948, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1948, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1948, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1949, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1950, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1950, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1950, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1951, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1951, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1951, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1951, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1951, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1952, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1952, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1952, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1952, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1953, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1953, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1955, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1956, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1956, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1956, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1956, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1957, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1957, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1957, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1957, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1957, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1958, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1958, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1958, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1959, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1959, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1959, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1960, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1961, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1962, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1962, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1963, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1964, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1965, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1965, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1965, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1965, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1965, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1966, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1966, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1967, 190, 57, NULL, NULL)
GO
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1968, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1969, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1969, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1970, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1970, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1970, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1971, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1971, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1972, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1973, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1973, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1974, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1974, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1974, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1974, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1975, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1976, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1977, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1977, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1977, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1977, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1977, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1978, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1978, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1978, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1978, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1978, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1979, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1981, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1981, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1981, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1982, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1982, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1982, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1983, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1985, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1986, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1987, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1987, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1987, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1987, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1988, 188, 50, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1989, 187, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1989, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1990, 183, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1990, 184, 49, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1990, 184, 56, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 185, 52, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 185, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 186, 54, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 186, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 189, 53, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1991, 190, 57, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1993, 190, 51, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1993, 190, 55, NULL, NULL)
INSERT [dbo].[Student_gets_Assignment] ([Student_id], [Course_id], [Assignment_id], [oralMark], [totalMark]) VALUES (1993, 190, 57, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Trainer] ON 

INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (271, N'Ioannis', N'Christoforou', N'Telecommunications')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (272, N'Katerina', N'Iordanou', N'Telecommunications')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (273, N'Ioannis', N'Hatzis', N'Artificial Intelligence')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (274, N'Konstantinos', N'Iordanou', N'Artificial Intelligence')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (275, N'Giorgos', N'Doukas', N'Telecommunications')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (276, N'Ioannis', N'Christoforou', N'Database System Implementation')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (277, N'Eleni', N'Iordanou', N'Telecommunications')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (278, N'Maria', N'Papa', N'Computer Architecture')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (279, N'Giorgos', N'Doukas', N'Cryptography')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (280, N'Konstantinos', N'Pantazis', N'Numerical Analysis')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (281, N'Katerina', N'Papa', N'Compilers')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (282, N'Vasiliki', N'Iordanou', N'Parallel Systems')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (283, N'Eleni', N'Karagianni', N'Numerical Analysis')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (284, N'Vasiliki', N'Karagianni', N'Compilers')
INSERT [dbo].[Trainer] ([id], [firstName], [lastName], [subject]) VALUES (285, N'Eleni', N'Rousopoulou', N'Electronics')
SET IDENTITY_INSERT [dbo].[Trainer] OFF
GO
ALTER TABLE [dbo].[Course_has_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Assignment_Assignment] FOREIGN KEY([Assignment_id])
REFERENCES [dbo].[Assignment] ([id])
GO
ALTER TABLE [dbo].[Course_has_Assignment] CHECK CONSTRAINT [FK_Course_has_Assignment_Assignment]
GO
ALTER TABLE [dbo].[Course_has_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Assignment_Course] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Course_has_Assignment] CHECK CONSTRAINT [FK_Course_has_Assignment_Course]
GO
ALTER TABLE [dbo].[Course_has_Student]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Student_Course] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Course_has_Student] CHECK CONSTRAINT [FK_Course_has_Student_Course]
GO
ALTER TABLE [dbo].[Course_has_Student]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Student_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Course_has_Student] CHECK CONSTRAINT [FK_Course_has_Student_Student]
GO
ALTER TABLE [dbo].[Course_has_Trainer]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Trainer_Course] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Course_has_Trainer] CHECK CONSTRAINT [FK_Course_has_Trainer_Course]
GO
ALTER TABLE [dbo].[Course_has_Trainer]  WITH CHECK ADD  CONSTRAINT [FK_Course_has_Trainer_Trainer] FOREIGN KEY([Trainer_id])
REFERENCES [dbo].[Trainer] ([id])
GO
ALTER TABLE [dbo].[Course_has_Trainer] CHECK CONSTRAINT [FK_Course_has_Trainer_Trainer]
GO
ALTER TABLE [dbo].[Student_gets_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Student_gets_Assignment_Course_has_Assignment] FOREIGN KEY([Course_id], [Assignment_id])
REFERENCES [dbo].[Course_has_Assignment] ([Course_id], [Assignment_id])
GO
ALTER TABLE [dbo].[Student_gets_Assignment] CHECK CONSTRAINT [FK_Student_gets_Assignment_Course_has_Assignment]
GO
ALTER TABLE [dbo].[Student_gets_Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Student_gets_Assignment_Student] FOREIGN KEY([Student_id])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_gets_Assignment] CHECK CONSTRAINT [FK_Student_gets_Assignment_Student]
GO
