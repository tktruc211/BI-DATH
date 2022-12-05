/*
ALTER DATABASE Stage
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
USE master
DROP DATABASE Stage
GO
*/

CREATE DATABASE Stage
GO

USE Stage
GO

CREATE TABLE [CASE_REPORT] (
  [Outcome] varchar(50),
  [Age_Group] varchar(50),
  [Gender] varchar(50),
  [Reporting_PHU] varchar(255),
  [SpecimenDate] date,
  [Reported_Date] date,
  [Reporting_PHU_City] varchar(50),
  [TestReported_Date] date,
  [CaseAcquisition_info] varchar(50),
  [AccurateEpisode_DT] date,
  [Reporting_PHU_Address] varchar(255),
  [Reporting_PHU_Website] varchar(255),
  [OutbreakRelated] varchar(20),
  [Reporting_PHU_Latitude] float,
  [Reporting_PHU_Longitude] float,
  [Reporting_PHU_Postal_Code] varchar(20)
)
ON [PRIMARY]
GO

CREATE TABLE [CASE_DETAIL] (
  [ObjectID] int,
  [Row_ID] int,
  [Reported_Date] date,
  [Reporting_PHU] varchar(255),
  [Age_Group] varchar(50),
  [Gender] varchar(50),
  [Exposure] varchar(50),
  [Case_Status] varchar(50),
  [Province] varchar(50)
)
ON [PRIMARY]
GO

CREATE TABLE [ONGOING_OUTBREAK] (
  [Reported_Date] date,
  [PHU_ID] int,
  [Outbreak_Group] varchar(50),
  [Number_Ongoing_Outbreaks] int
)
ON [PRIMARY]
GO

CREATE TABLE [PHU] (
  [PHU_ID] int,
  [Reporting_PHU] varchar(255),
  [Reporting_PHU_Address] varchar(255),
  [Reporting_PHU_City] varchar(50),
  [Reporting_PHU_Postal_Code] varchar(20),
  [Reporting_PHU_Website] varchar(255),
  [Reporting_PHU_Latitude] bigint,
  [Reporting_PHU_Longitude] bigint
)
ON [PRIMARY]
GO

CREATE TABLE [PHU_GROUP] (
  [Reporting_PHU_Group] varchar(100),
  [Reporting_PHU_City] varchar(50),
  [Reporting_PHU] varchar(255)
)
ON [PRIMARY]
GO

CREATE TABLE [VACCINES] (
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