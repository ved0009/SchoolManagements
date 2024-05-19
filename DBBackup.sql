
USE [esmadmin1_]
GO
/****** Object:  Table [dbo].[tb_admin_User]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_emp_EmployeeBasicDetails]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_mst_Role]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_std_Classes]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_std_StudentBasicDetail]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_std_StudentOtherInfo]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  Table [dbo].[tb_std_StudentParentInfo]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GetRoles]    Script Date: 19-05-2024 13:11:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetRoles]

as begin 
select * from tb_mst_Role;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUpdateClasses]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllClass]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllEmployees]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_GetAllStudents]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateEmployees]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateStudentDetails]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_std_InsertUpdateStudentParentInfo]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_test]    Script Date: 19-05-2024 13:11:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_user_login]    Script Date: 19-05-2024 13:11:49 ******/
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
 
