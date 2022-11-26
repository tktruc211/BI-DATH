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
  [Outcome] varchar(20),
  [Age_Group] varchar(20),
  [Gender] varchar(8),
  [Reporting_PHU] varchar(100),
  [SpecimenDate] datetime,
  [Reported_Date] datetime,
  [Reporting_PHU_City] varchar(60),
  [TestReported_Date] datetime,
  [CaseAcquisition_info] varchar(100),
  [AccurateEpisode_DT] datetime,
  [Reporting_PHU_Address] varchar(100),
  [Reporting_PHU_Website] varchar(100),
  [OutbreakRelated] varchar(4),
  [Reporting_PHU_Lattitude] float,
  [Reporting_PHU_Longitude] float,
  [Reporting_PHU_Postal_Code] varchar(8)
);

CREATE TABLE [CASE_DETAIL] (
  [ObjectID] int,
  [Row_ID] int,
  [Reported_Date] datetime,
  [Reporting_PHU] varchar(100),
  [Age_Group] varchar(20),
  [Gender] varchar(8),
  [Exposure] varchar(100),
  [Case_Status] varchar(40),
  [Province] varchar(20)
);

CREATE TABLE [ONGOING_OUTBREAK] (
  [Reported_Date] datetime,
  [PHU_ID] int,
  [Outbreak_Group] varchar(20),
  [Number_Ongoing_Outbreaks] int
);

CREATE TABLE [PHU] (
  [PHU_ID] int,
  [Reporting_PHU] varchar(100),
  [Reporting_PHU_Address] varchar(100),
  [Reporting_PHU_City] varchar(60),
  [Reporting_PHU_Postal_Code] varchar(8),
  [Reporting_PHU_Website] varchar(100),
  [Reporting_PHU_Lattitude] int,
  [Reporting_PHU_Longitude] int
);

CREATE TABLE [PHU_GROUP] (
  [Reporting_PHU_Group] varchar(100),
  [Reporting_PHU_City] varchar(60),
  [Reporting_PHU] varchar(100)
);

CREATE TABLE [VACCINES] (
  [Reported_Date] datetime,
  [PHU_ID] int,
  [Age_Group] varchar(20),
  [One_Dose] int,
  [Second_Dose] int,
  [Fully_Vaccinated] int,
  [Third_Dose] int
);