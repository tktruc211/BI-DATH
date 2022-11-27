/*
ALTER DATABASE NDS
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
USE master
DROP DATABASE NDS
GO
*/

/*
DBCC CHECKIDENT ('[CASE_REPORT]', RESEED, 1);
GO
*/

CREATE DATABASE NDS
GO

USE NDS
GO

CREATE TABLE [CASE_REPORT] (
  [CaseReport_ID] int IDENTITY(1, 1) NOT NULL,
  [Outcome] varchar(50),
  [Age_Group] varchar(50),
  [Gender] varchar(50),
  [PHU_ID] int,
  [SpecimenDate] date,
  [Reported_Date] date,
  [TestReported_Date] date,
  [CaseAcquisition_info] varchar(50),
  [AccurateEpisode_DT] date,
  [OutbreakRelated] varchar(20)
)
ON [PRIMARY]
GO

CREATE TABLE [CASE_DETAIL] (
  [CaseDetail_ID] int IDENTITY(1, 1) NOT NULL,
  [Reported_Date] date,
  [PHU_ID] int,
  [Age_Group] varchar(50),
  [Gender] varchar(50),
  [Exposure] varchar(50),
  [Case_Status] varchar(50)
)
ON [PRIMARY]
GO

CREATE TABLE [ONGOING_OUTBREAK] (
  [Outbreak_ID] int IDENTITY(1, 1) NOT NULL,
  [Reported_Date] date,
  [PHU_ID] int,
  [Outbreak_Group] varchar(50),
  [Number_Ongoing_Outbreaks] int
)
ON [PRIMARY]
GO

CREATE TABLE [PHU] (
  [PHU_ID] int NOT NULL,
  [Reporting_PHU] varchar(255),
  [Reporting_PHU_Address] varchar(255),
  [Reporting_PHU_City] varchar(50),
  [Reporting_PHU_Province] varchar(50),
  [Reporting_PHU_Postal_Code] varchar(20),
  [Reporting_PHU_Website] varchar(255),
  [Reporting_PHU_Latitude] bigint,
  [Reporting_PHU_Longitude] bigint
)
ON [PRIMARY]
GO

CREATE TABLE [PHU_GROUP] (
  [PHUGroup_ID] int IDENTITY(1, 1) NOT NULL,
  [Reporting_PHU_Group] varchar(100),
  [PHU_ID] int
)
ON [PRIMARY]
GO

CREATE TABLE [VACCINES] (
  [Vaccines_ID] int IDENTITY(1, 1) NOT NULL,
  [Reported_Date] date,
  [PHU_ID] int,
  [Age_Group] varchar(50),
  [One_Dose] int,
  [Second_Dose] int,
  [Fully_Vaccinated] int,
  [Third_Dose] int
)
ON [PRIMARY]
GO