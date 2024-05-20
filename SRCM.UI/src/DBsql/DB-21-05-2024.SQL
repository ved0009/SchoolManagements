USE [esmadmin1_]
GO
/****** Object:  Table [dbo].[tb_admin_User]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_admin_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [nvarchar](10) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](8) NULL,
	[RoleId] [int] NULL,
	[RoleName] [varchar](100) NULL,
	[Image] [varchar](max) NULL,
	[Mobile] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NULL,
	[isactive] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_emp_EmployeeBasicDetails]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_emp_EmployeeBasicDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NULL,
	[Mobile] [nvarchar](10) NULL,
	[Role] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[DateOfJoining] [datetime] NULL,
	[MonthlySalary] [decimal](10, 2) NULL,
	[FatherOrHusbandName] [varchar](100) NULL,
	[Gender] [int] NULL,
	[Experience] [int] NULL,
	[NationalId] [int] NULL,
	[Religion] [int] NULL,
	[EmailAddress] [varchar](500) NULL,
	[Education] [int] NULL,
	[BloodGroup] [int] NULL,
	[DateOfBirth] [datetime] NULL,
	[HomeAddress] [varchar](max) NULL,
	[Isactive] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_mst_Role]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_mst_Role](
	[Id] [bigint] NULL,
	[RoleName] [varchar](200) NULL,
	[Isactive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_std_Classes]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_std_Classes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
	[MonthTutionFees] [decimal](10, 2) NOT NULL,
	[ClassTeacherId] [bigint] NOT NULL,
	[TotalBoys] [int] NULL,
	[TotalGirls] [int] NULL,
	[TotalStudents] [int] NULL,
	[IsActice] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_std_StudentBasicDetail]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_std_StudentBasicDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Class] [nvarchar](50) NULL,
	[Section] [nvarchar](10) NULL,
	[Image] [varchar](max) NULL,
	[DateOfAdmission] [date] NULL,
	[FeeDiscount] [decimal](10, 2) NULL,
	[Mobile] [nvarchar](15) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NULL,
	[isactive] [int] NULL,
 CONSTRAINT [PK__tb_std_S__3214EC070621F9EB] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_std_StudentOtherInfo]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_std_StudentOtherInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[DOB] [datetime] NOT NULL,
	[StudentDocumentID] [int] NULL,
	[isOrphan] [int] NULL,
	[Gender] [int] NULL,
	[Cast] [int] NULL,
	[OSC] [int] NULL,
	[IdentificationMark] [nvarchar](500) NULL,
	[PreviousSchool] [nvarchar](500) NULL,
	[Religion] [int] NULL,
	[BloodGroup] [int] NULL,
	[SRNBoardRollNo] [nvarchar](20) NULL,
	[Family] [nvarchar](500) NULL,
	[Disease] [nvarchar](500) NULL,
	[AdditionalNote] [nvarchar](max) NULL,
	[TotalSibling] [int] NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NULL,
	[isactive] [int] NULL,
 CONSTRAINT [PK__tb_std_S__3214EC2742A7B784] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_std_StudentParentInfo]    Script Date: 20-05-2024 23:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_std_StudentParentInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[ParentType] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[NationalID] [nvarchar](50) NULL,
	[Occupation] [nvarchar](100) NULL,
	[Education] [nvarchar](100) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Profession] [nvarchar](100) NULL,
	[Income] [decimal](18, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NULL,
	[isactive] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_admin_User] ON
GO
INSERT [dbo].[tb_admin_User] ([Id], [Name], [UserName], [Email], [Password], [RoleId], [RoleName], [Image], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (1, N'Abhi Singh', N'abhisingh', N'abhisingh@example.com', N'pass123', 1, N'Admin', N'path_to_image.jpg', N'8505948801', CAST(N'2024-05-14T23:31:03.223' AS DateTime), N'AdminUser1', CAST(N'2024-05-14T23:31:03.223' AS DateTime), N'AdminUser1', 1)
GO
INSERT [dbo].[tb_admin_User] ([Id], [Name], [UserName], [Email], [Password], [RoleId], [RoleName], [Image], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (2, N'Ved Sharma', N'vedsharma', N'vedsharma@example.com', N'pass123', 2, N'User', N'path_to_image.jpg', N'9599353841', CAST(N'2024-05-14T23:31:03.223' AS DateTime), N'AdminUser2', CAST(N'2024-05-14T23:31:03.223' AS DateTime), N'AdminUser2', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_admin_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_emp_EmployeeBasicDetails] ON
GO
INSERT [dbo].[tb_emp_EmployeeBasicDetails] ([Id], [FullName], [Mobile], [Role], [ImageUrl], [DateOfJoining], [MonthlySalary], [FatherOrHusbandName], [Gender], [Experience], [NationalId], [Religion], [EmailAddress], [Education], [BloodGroup], [DateOfBirth], [HomeAddress], [Isactive], [CreatedOn], [CreatedBy]) VALUES (1, N'Abhinandan Singh', N'850594801', 2, N'https://localhost:7103/Images/school.jpg', CAST(N'2024-05-18T17:15:48.037' AS DateTime), CAST(7500.00 AS Decimal(10, 2)), N'Hare ram Singh', 1, 2, 3233, 1, N'abhi@gmail.com', 12, 1, CAST(N'2000-05-18T17:15:48.037' AS DateTime), N'vill karnera post ballabhgrah', 1, CAST(N'2024-05-18T22:57:08.067' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[tb_emp_EmployeeBasicDetails] OFF
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (1, N'Admin', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (2, N'Principal', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (3, N'Teacher', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (4, N'Accountant', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (5, N'Management Staff', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (6, N'Store manager', 1)
GO
INSERT [dbo].[tb_mst_Role] ([Id], [RoleName], [Isactive]) VALUES (7, N'Other', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_std_Classes] ON
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'1st', CAST(4550.50 AS Decimal(10, 2)), 2, 10, 12, 22, 1, CAST(N'2024-05-18T00:46:18.470' AS DateTime), NULL, CAST(N'2024-05-18T00:46:18.470' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'2nd', CAST(850.25 AS Decimal(10, 2)), 4, 1, 1, 1, 1, CAST(N'2024-05-18T01:17:24.360' AS DateTime), NULL, CAST(N'2024-05-18T01:17:24.360' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'3rd', CAST(8500.50 AS Decimal(10, 2)), 3, 1, 1, 1, 1, CAST(N'2024-05-18T01:18:45.813' AS DateTime), NULL, CAST(N'2024-05-18T01:18:45.813' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, N'4th', CAST(4500.60 AS Decimal(10, 2)), 4, 1, 1, 1, 1, CAST(N'2024-05-18T01:19:07.107' AS DateTime), NULL, CAST(N'2024-05-18T01:19:07.107' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, N'5th', CAST(2300.00 AS Decimal(10, 2)), 3, 1, 1, 1, 1, CAST(N'2024-05-18T01:21:21.693' AS DateTime), NULL, CAST(N'2024-05-18T01:21:21.693' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, N'6th', CAST(12000.00 AS Decimal(10, 2)), 3, 10, 12, 22, 1, CAST(N'2024-05-18T01:22:01.783' AS DateTime), NULL, CAST(N'2024-05-18T01:22:01.783' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, N'7th', CAST(12350.00 AS Decimal(10, 2)), 2, 10, 12, 22, 1, CAST(N'2024-05-18T02:32:10.183' AS DateTime), NULL, CAST(N'2024-05-18T02:32:10.183' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10002, N'8th', CAST(15600.00 AS Decimal(10, 2)), 4, 1, 1, 1, 1, CAST(N'2024-05-19T10:35:43.227' AS DateTime), NULL, CAST(N'2024-05-19T10:35:43.227' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10003, N'9th', CAST(15000.00 AS Decimal(10, 2)), 4, 1, 1, 1, 1, CAST(N'2024-05-19T11:45:25.960' AS DateTime), NULL, CAST(N'2024-05-19T11:45:25.960' AS DateTime), NULL)
GO
INSERT [dbo].[tb_std_Classes] ([Id], [ClassName], [MonthTutionFees], [ClassTeacherId], [TotalBoys], [TotalGirls], [TotalStudents], [IsActice], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10004, N'10th', CAST(15600.00 AS Decimal(10, 2)), 3, 1, 1, 1, 1, CAST(N'2024-05-19T12:13:41.460' AS DateTime), NULL, CAST(N'2024-05-19T12:13:41.460' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tb_std_Classes] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentBasicDetail] ON
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (1, N'Dhiraj Singh', N'8', N'A', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(0.90 AS Decimal(10, 2)), N'8505948801', CAST(N'2024-05-15T00:02:17.747' AS DateTime), N'SCRM', CAST(N'2024-05-15T00:02:17.747' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (2, N'string', N'string', N'string', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(0.00 AS Decimal(10, 2)), N'string', CAST(N'2024-05-15T00:08:32.790' AS DateTime), N'SCRM', CAST(N'2024-05-15T00:08:32.790' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (3, N'Ved Sharma', N'9', N'A', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(10.10 AS Decimal(10, 2)), N'125478962', CAST(N'2024-05-15T00:13:23.423' AS DateTime), N'SCRM', CAST(N'2024-05-15T00:13:23.423' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (4, N'Raghu Singh', N'3', N'g', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(0.00 AS Decimal(10, 2)), N'8745164168', CAST(N'2024-05-15T00:43:46.407' AS DateTime), N'SCRM', CAST(N'2024-05-15T00:43:46.407' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (5, N'Priya Singh', N'8', N'A', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(0.00 AS Decimal(10, 2)), N'no', CAST(N'2024-05-15T01:23:44.447' AS DateTime), N'SCRM', CAST(N'2024-05-15T01:23:44.447' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentBasicDetail] ([Id], [Name], [Class], [Section], [Image], [DateOfAdmission], [FeeDiscount], [Mobile], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (6, N'Priya Singh', N'8', N'A', N'https://localhost:7103/Images/ewallet.jpeg', CAST(N'2024-05-14' AS Date), CAST(0.00 AS Decimal(10, 2)), N'no', CAST(N'2024-05-15T01:26:14.003' AS DateTime), N'SCRM', CAST(N'2024-05-15T01:26:14.003' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentBasicDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentOtherInfo] ON
GO
INSERT [dbo].[tb_std_StudentOtherInfo] ([ID], [StudentID], [DOB], [StudentDocumentID], [isOrphan], [Gender], [Cast], [OSC], [IdentificationMark], [PreviousSchool], [Religion], [BloodGroup], [SRNBoardRollNo], [Family], [Disease], [AdditionalNote], [TotalSibling], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (1, 12345, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 9876, 0, 1, 1, 1, N'Identification mark', N'Previous school', 1, 1, N'SRN123', N'Family details', N'Disease details', N'Additional notes', 2, N'Address details', CAST(N'2024-05-15T00:39:09.383' AS DateTime), N'AdminUser', CAST(N'2024-05-15T00:39:09.383' AS DateTime), N'AdminUser', 1)
GO
INSERT [dbo].[tb_std_StudentOtherInfo] ([ID], [StudentID], [DOB], [StudentDocumentID], [isOrphan], [Gender], [Cast], [OSC], [IdentificationMark], [PreviousSchool], [Religion], [BloodGroup], [SRNBoardRollNo], [Family], [Disease], [AdditionalNote], [TotalSibling], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (2, 4, CAST(N'2020-05-14T19:11:26.060' AS DateTime), 210, 1, 1, 10, 1, N'no', N'stg', 10, 10, N'484641212dwq', N'qweqwefjewf wekldl', N'ewdewfdewpo w djodopdw', N'dw ewd pwjdw', 21, N'hello', CAST(N'2024-05-15T00:43:46.407' AS DateTime), NULL, CAST(N'2024-05-15T00:43:46.407' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentOtherInfo] ([ID], [StudentID], [DOB], [StudentDocumentID], [isOrphan], [Gender], [Cast], [OSC], [IdentificationMark], [PreviousSchool], [Religion], [BloodGroup], [SRNBoardRollNo], [Family], [Disease], [AdditionalNote], [TotalSibling], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (3, 5, CAST(N'2024-05-14T19:49:20.763' AS DateTime), 420, 0, 2, 1, 5, N'no', N'no', 1, 1, N'123456', N' testing address', N'no', N'no', 0, N'no already exist at top', CAST(N'2024-05-15T01:23:44.450' AS DateTime), NULL, CAST(N'2024-05-15T01:23:44.450' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentOtherInfo] ([ID], [StudentID], [DOB], [StudentDocumentID], [isOrphan], [Gender], [Cast], [OSC], [IdentificationMark], [PreviousSchool], [Religion], [BloodGroup], [SRNBoardRollNo], [Family], [Disease], [AdditionalNote], [TotalSibling], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (4, 6, CAST(N'2024-05-14T19:49:20.763' AS DateTime), 420, 0, 2, 1, 5, N'no', N'no', 1, 1, N'123456', N' testing address', N'no', N'no', 0, N'no already exist at top', CAST(N'2024-05-15T01:26:14.003' AS DateTime), NULL, CAST(N'2024-05-15T01:26:14.003' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentOtherInfo] ([ID], [StudentID], [DOB], [StudentDocumentID], [isOrphan], [Gender], [Cast], [OSC], [IdentificationMark], [PreviousSchool], [Religion], [BloodGroup], [SRNBoardRollNo], [Family], [Disease], [AdditionalNote], [TotalSibling], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (5, 7, CAST(N'2024-05-18T05:48:00.910' AS DateTime), 0, 0, 0, 0, 0, N'string', N'string', 0, 0, N'string', N'string', N'string', N'string', 0, N'string', CAST(N'2024-05-18T11:18:03.613' AS DateTime), NULL, CAST(N'2024-05-18T11:18:03.613' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentOtherInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentParentInfo] ON
GO
INSERT [dbo].[tb_std_StudentParentInfo] ([ID], [StudentID], [ParentType], [Name], [NationalID], [Occupation], [Education], [Mobile], [Profession], [Income], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (1, 6, N'Father', N'Father Pra Singh', N'12', N'212', N'12', N'84131146', N'Farmer', CAST(50000.00 AS Decimal(18, 2)), CAST(N'2024-05-15T01:26:23.490' AS DateTime), NULL, CAST(N'2024-05-15T01:26:23.490' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentParentInfo] ([ID], [StudentID], [ParentType], [Name], [NationalID], [Occupation], [Education], [Mobile], [Profession], [Income], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (2, 6, N'Mother', N'Moth priya mon', N'12', N'12', N'12', N'48411813', N'Home maker', CAST(1200.00 AS Decimal(18, 2)), CAST(N'2024-05-15T01:26:30.023' AS DateTime), NULL, CAST(N'2024-05-15T01:26:30.023' AS DateTime), NULL, 1)
GO
INSERT [dbo].[tb_std_StudentParentInfo] ([ID], [StudentID], [ParentType], [Name], [NationalID], [Occupation], [Education], [Mobile], [Profession], [Income], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [isactive]) VALUES (3, 7, N'string', N'string', N'0', N'0', N'0', N'string', N'string', CAST(0.00 AS Decimal(18, 2)), CAST(N'2024-05-18T11:18:03.643' AS DateTime), NULL, CAST(N'2024-05-18T11:18:03.643' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[tb_std_StudentParentInfo] OFF
GO
ALTER TABLE [dbo].[tb_admin_User] ADD  DEFAULT ((1)) FOR [RoleId]
GO
ALTER TABLE [dbo].[tb_admin_User] ADD  DEFAULT ('Admin') FOR [RoleName]
GO
ALTER TABLE [dbo].[tb_admin_User] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_admin_User] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tb_admin_User] ADD  DEFAULT ((1)) FOR [isactive]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT (getdate()) FOR [DateOfJoining]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT ((1)) FOR [Gender]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT ((0)) FOR [Experience]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT ((1)) FOR [Isactive]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_emp_EmployeeBasicDetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[tb_mst_Role] ADD  DEFAULT ((1)) FOR [Isactive]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT ((1)) FOR [TotalBoys]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT ((1)) FOR [TotalGirls]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT ((1)) FOR [TotalStudents]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT ((1)) FOR [IsActice]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_std_Classes] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentBasicDetail] ADD  CONSTRAINT [DF__tb_std_St__Creat__2B3F6F97]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentBasicDetail] ADD  CONSTRAINT [DF__tb_std_St__Modif__2C3393D0]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentBasicDetail] ADD  CONSTRAINT [DF__tb_std_St__isact__34C8D9D1]  DEFAULT ((1)) FOR [isactive]
GO
ALTER TABLE [dbo].[tb_std_StudentOtherInfo] ADD  CONSTRAINT [DF__tb_std_St__Creat__2F10007B]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentOtherInfo] ADD  CONSTRAINT [DF__tb_std_St__Modif__300424B4]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentOtherInfo] ADD  CONSTRAINT [DF__tb_std_St__isact__35BCFE0A]  DEFAULT ((1)) FOR [isactive]
GO
ALTER TABLE [dbo].[tb_std_StudentParentInfo] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentParentInfo] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tb_std_StudentParentInfo] ADD  DEFAULT ((1)) FOR [isactive]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRoles]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetRoles]

as begin
select * from tb_mst_Role;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateClasses]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_InsertUpdateClasses]
    @pid BIGINT,
    @pclassname VARCHAR(50),
    @pmonthtutionfees DECIMAL(10,2),
    @pclassteacherid BIGINT,
    @ptotalboys INT,
    @ptotalgirls INT,
    @ptotalstudents INT
AS
BEGIN
    IF @pid = 0
    BEGIN
        INSERT INTO tb_std_Classes (ClassName, MonthTutionFees, ClassTeacherId)
        VALUES (@pclassname, @pmonthtutionfees, @pclassteacherid )
        SELECT 'success';
    END
    ELSE
    BEGIN
        UPDATE tb_std_Classes
        SET ClassName = @pclassname,
            MonthTutionFees = @pmonthtutionfees,
            ClassTeacherId = @pclassteacherid,
            TotalBoys = @ptotalboys,
            TotalGirls = @ptotalgirls,
            TotalStudents = @ptotalstudents
        WHERE Id = @pid
        SELECT 'success';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllClass]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_std_GetAllClass]
    @pid BIGINT
AS
BEGIN
    IF @pid = 0
    BEGIN
        SELECT Id, ClassName, MonthTutionFees, ClassTeacherId, TotalBoys, TotalGirls, TotalStudents
        FROM tb_std_Classes;
    END
    ELSE
    BEGIN
        SELECT Id, ClassName, MonthTutionFees, ClassTeacherId, TotalBoys, TotalGirls, TotalStudents
        FROM tb_std_Classes
        WHERE Id = @pid;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllEmployees]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_std_GetAllEmployees]
    @pid BIGINT
AS
BEGIN
    IF @pid = 0
    BEGIN
        SELECT emp.Id,emp.FullName,emp.Mobile,emp.Role,  rl.RoleName,
		ImageUrl
        FROM tb_emp_EmployeeBasicDetails as emp
		left join tb_mst_Role as rl on
		emp.Role = rl.Id
	--	select * from tb_mst_Role
--		select * from tb_emp_EmployeeBasicDetails
    END
    ELSE
    BEGIN
        SELECT Id, FullName
           ,  Mobile
           ,  Role
           ,  ImageUrl
           ,  DateOfJoining
           ,  MonthlySalary
           ,  FatherOrHusbandName
           ,  Gender
           ,  Experience
           ,  NationalId
           ,  Religion
           ,  EmailAddress
           ,  Education
           ,  BloodGroup
           ,  DateOfBirth
           ,  HomeAddress
           ,  Isactive
        FROM tb_emp_EmployeeBasicDetails
        WHERE Id = @pid;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllStudents]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_std_GetAllStudents]
@createdBy nvarchar(100)
as begin

select Id, Name,Image,isactive  from tb_std_StudentBasicDetail
 where --CreatedBy = @createdBy and
 isactive = 1;
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateEmployees]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_std_InsertUpdateEmployees]
@pid int,
@pfullname nvarchar(100),
    @pimage varchar(max),
	@proleId int,
    @pdateOfJoining datetime,
    @pmobile nvarchar(10),
	@pmonthlysalaty decimal(10,2),
	@pfatherOrHusbandName varchar(100),
	@pgender INT,
	@pexperience INT,
	@pnationalid INT,
	@preligion INT,
	@pemail varchar(500),
	@peducation INT,
    @DOB DATETIME,
    @pbloodGroup INT,
    @pAddress VARCHAR(MAX)
	as begin

	INSERT INTO   tb_emp_EmployeeBasicDetails
               (FullName ,ImageUrl ,Mobile ,Role ,DateOfJoining ,MonthlySalary ,FatherOrHusbandName ,Gender ,Experience ,NationalId ,Religion ,EmailAddress
 ,Education ,BloodGroup ,DateOfBirth ,HomeAddress)
         VALUES
               (@pfullname,@pimage,@pmobile,@proleId,@pdateOfJoining,@pmonthlysalaty,@pfatherOrHusbandName,@pgender,@pexperience,@pnationalid,@preligion,@pemail,
			   @peducation,@pbloodGroup,@DOB,@pAddress)
			   select 'success';
			   end;


GO
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateStudentDetails]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_std_InsertUpdateStudentDetails]
@studentId int,
@name nvarchar(100),
@class nvarchar(50),
    @section nvarchar(10),
    @image varchar(max),
    @dateOfAdmission date,
    @feeDiscount decimal(10,2),
    @mobile nvarchar(15),
    @DOB DATETIME,
    @StudentDocumentID INT,
    @isOrphan INT,
    @Gender INT,
    @Cast INT,
    @OSC INT,
    @IdentificationMark NVARCHAR(500),
    @PreviousSchool NVARCHAR(500),
    @Religion INT,
    @BloodGroup INT,
    @SRNBoardRollNo NVARCHAR(20),
    @Family NVARCHAR(500),
    @Disease NVARCHAR(500),
    @AdditionalNote NVARCHAR(MAX),
    @TotalSibling INT,
    @Address NVARCHAR(MAX)
	as begin
	Declare @stdid int;
	INSERT INTO   tb_std_StudentBasicDetail
               (Name
               ,Class
               ,Section
               ,Image
               ,DateOfAdmission
               ,FeeDiscount
               ,Mobile
               ,CreatedOn
               ,CreatedBy
                )
         VALUES
               (@name,@class,@section,@image,@dateOfAdmission,@feeDiscount,@mobile,getDate(),'SCRM');
			     select  @stdid =  Id from tb_std_StudentBasicDetail where Name = @name and Mobile = @mobile;
				 --- inserting into the  another tb
				   INSERT INTO [dbo].[tb_std_StudentOtherInfo]
           ([StudentID]
           ,[DOB]
           ,[StudentDocumentID]
           ,[isOrphan]
           ,[Gender]
           ,[Cast]
           ,[OSC]
           ,[IdentificationMark]
           ,[PreviousSchool]
           ,[Religion]
           ,[BloodGroup]
           ,[SRNBoardRollNo]
           ,[Family]
           ,[Disease]
           ,[AdditionalNote]
           ,[TotalSibling]
           ,[Address]
           )
     VALUES
           (@stdid
           ,@DOB
           ,@StudentDocumentID
           ,@isOrphan
           ,@Gender
           ,@Cast
           ,@OSC
           ,@IdentificationMark
           ,@PreviousSchool
           ,@Religion
           ,@BloodGroup
           ,@SRNBoardRollNo
           ,@Family
           ,@Disease
           ,@AdditionalNote
           ,@TotalSibling
           ,@Address

            );
			select @stdid;

			   end;


GO
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateStudentParentInfo]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_std_InsertUpdateStudentParentInfo]
    @StudentID INT,
    @ParentType NVARCHAR(50),
    @Name NVARCHAR(100),
    @NationalID NVARCHAR(50),
    @Occupation NVARCHAR(100),
    @Education NVARCHAR(100),
    @Mobile NVARCHAR(15),
    @Profession NVARCHAR(100),
    @Income DECIMAL(18, 2)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[tb_std_StudentParentInfo]
           ([StudentID]
           ,[ParentType]
           ,[Name]
           ,[NationalID]
           ,[Occupation]
           ,[Education]
           ,[Mobile]
           ,[Profession]
           ,[Income]
           )
     VALUES
           (@StudentID
           ,@ParentType
           ,@Name
           ,@NationalID
           ,@Occupation
           ,@Education
           ,@Mobile
           ,@Profession
           ,@Income
           );
		   select 'success';
END
GO
/****** Object:  StoredProcedure [dbo].[sp_test]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_test]
  @mynum bigint

as begin

select * from tb_std_StudentBasicDetail

end;
GO
/****** Object:  StoredProcedure [dbo].[sp_user_login]    Script Date: 20-05-2024 23:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_user_login]
 (
 @pusername varchar(100),
 @ppassword varchar(8)
 )
 as begin

 select Id  as UserId,UserName,Name as FullName ,Email, RoleId, RoleName from tb_admin_User
 where Password = @ppassword and (UserName = @pusername or Mobile = @pusername or Email = @pusername) and isactive = 1 ;
 end
GO
