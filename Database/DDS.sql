/*
ALTER DATABASE DDS
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
USE master
DROP DATABASE DDS
GO
*/


CREATE DATABASE DDS
GO

USE DDS
GO

CREATE TABLE CASE_DETAIL_fact
(
	[CaseDetail_ID] int IDENTITY(1, 1) NOT NULL,
	[PHU_ID] int,
	[Date_ID] date,
	[Case_ID] int,
	[Outbreak_ID] int,
	[Case_Status] varchar(50)
)
GO

CREATE TABLE VACCINES_fact
(
	[Vaccines_ID] int IDENTITY(1, 1) NOT NULL,
	[PHU_ID] int,
	[Date_ID] date,
	[Case_ID] int,
	[Outbreak_ID] int,
	[Case_Status] varchar(50),
	[One_Dose] int,
	[Second_Dose] int,
	[Fully_Vaccinated] int,
	[Third_Dose] int
)
GO

CREATE TABLE dim_Date
(	
	[Date_ID] date not null, 
	[calendar_Date] char(2),
	[calendar_Month] char(2),
	[calendar_Quarter] int,
	[calendar_Year] int
)
GO

CREATE TABLE dim_Geography
(	
	[PHU_ID] int not null, 
	[Reporting_PHU] varchar(255),
	[Reporting_PHU_Address] varchar(255),
	[Reporting_PHU_City] varchar(50),
	[Reporting_PHU_Province] varchar(50),
	[Reporting_PHU_Postal_Code] varchar(20),
	[Reporting_PHU_Website] varchar(255),
	[Reporting_PHU_Latitude] bigint,
	[Reporting_PHU_Longitude] bigint,
	[PHUGroup_ID] int
)
GO


CREATE TABLE dim_PHU_GROUP
(	
	[PHUGroup_ID] int IDENTITY(1, 1) not null, 
	[Reporting_PHU_Group] varchar(255)
)
GO

CREATE TABLE dim_Case
(	
	[Case_ID] int IDENTITY(1, 1) not null, 
	[AgeGroup] varchar(50),
	[Gender] varchar(50)
)
GO

CREATE TABLE dim_Outbreak
(	
	[Outbreak_ID] int IDENTITY(1, 1) not null, 
	[Outbreak_Group] varchar(50),
	[Number_Ongoing_Outbreaks] int	
)
GO