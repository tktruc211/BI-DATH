create database DDS_covid_report 
go 
use DDS_covid_report 
go
create table fact_case_details 
(
	[CaseDetail_ID] int IDENTITY(1, 1) NOT NULL,
	[Reported_Date] date,
	[PHU_ID] int,
	[ID_Age_Group] int,
	[Gender] varchar(50),
	[ID_Exposure] int,
	[ID_Case_Status] int
)

ALTER TABLE fact_case_details WITH NOCHECK ADD CONSTRAINT PK_fact_case_details PRIMARY KEY CLUSTERED(CaseDetail_ID) ON [PRIMARY]
go 
create table fact_VACCINES
(
	[Vaccines_ID] int IDENTITY(1, 1) NOT NULL,
	[Reported_Date] date,
	[PHU_ID] int,
	[ID_Age_Group] int,
	[One_Dose] int,
	[Second_Dose] int,
	[Fully_Vaccinated] int,
	[Third_Dose] int
)
go 
ALTER TABLE fact_VACCINES WITH NOCHECK ADD CONSTRAINT PK_fact_VACCINES PRIMARY KEY CLUSTERED(Vaccines_ID) ON [PRIMARY]
go

create table dim_date
(	
	ID_date date not null, 
	chalendar_Date char(2),
	chalendar_Month char(2),
	chalendar_Year int,
	chalendar_Quarter int
	
)

go
ALTER TABLE dim_date WITH NOCHECK ADD CONSTRAINT PK_dim_date PRIMARY KEY CLUSTERED(ID_date) ON [PRIMARY]
go


create table dim_phu
(	
	PHU_ID int IDENTITY(1, 1) not null, 
	[PHU_name] varchar(255),
	[Address] varchar(255),
	[PHU_Group] varchar(255),
	[City] varchar(50),
	[Province] varchar(50),
	[Postal_Code] varchar(20),
	[Website] varchar(255),
	[Latitude] bigint,
	[Longitude] bigint
	
)

go
ALTER TABLE dim_phu WITH NOCHECK ADD CONSTRAINT PK_dim_phu PRIMARY KEY CLUSTERED(PHU_ID) ON [PRIMARY]
go
go
create table dim_case_status 
(	
	ID_Case_Status int IDENTITY(1, 1) not null, 
	Case_Status nvarchar(200)
	
)
go
ALTER TABLE dim_case_status WITH NOCHECK ADD CONSTRAINT PK_dim_case_status PRIMARY KEY CLUSTERED(ID_Case_Status) ON [PRIMARY]

go 

create table dim_Exposure
(	
	ID_Exposure int IDENTITY(1, 1) not null, 
	Exposure  nvarchar(200)
	
)
go
ALTER TABLE dim_Exposure WITH NOCHECK ADD CONSTRAINT PK_dim_Exposure PRIMARY KEY CLUSTERED(ID_Exposure) ON [PRIMARY]

go 

create table dim_AgeGroup
(	
	ID_Age_Group int IDENTITY(1, 1) not null, 
	Age_Group  nvarchar(200)
	
)
go
ALTER TABLE dim_AgeGroup WITH NOCHECK ADD CONSTRAINT PK_dim_AgeGroup PRIMARY KEY CLUSTERED(ID_Age_Group) ON [PRIMARY]

go 

create table dim_AgeGroup
(	
	ID_Age_Group int IDENTITY(1, 1) not null, 
	Age_Group  nvarchar(200)
	
)
go
ALTER TABLE dim_AgeGroup WITH NOCHECK ADD CONSTRAINT PK_dim_AgeGroup PRIMARY KEY CLUSTERED(ID_Age_Group) ON [PRIMARY]

go 

create table dim_outbreak_group 
(	
	ID_Outbreak_group int IDENTITY(1, 1) not null, 
	Outbreak_group  nvarchar(200)
	
)
go
ALTER TABLE dim_outbreak_group WITH NOCHECK ADD CONSTRAINT PK_dim_outbreak_group PRIMARY KEY CLUSTERED(ID_Outbreak_group) ON [PRIMARY]

