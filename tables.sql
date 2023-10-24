CREATE TABLE ActivityType (
    ActivityTypeId INT PRIMARY KEY,
    TypeName NVARCHAR(255)
);

CREATE TABLE Activity (
    ActivityId INT PRIMARY KEY,
    ParentId INT,
    ActivityName NVARCHAR(255),
    ActivityTypeId INT,
    AreaId INT
);

CREATE TABLE Program (
    ProgramId INT PRIMARY KEY,
    ActivityId INT PRIMARY KEY,
    ProgramName NVARCHAR(255),
);

CREATE TABLE SubProgram (
    SubProgramId INT PRIMARY KEY,
    ActivityId INT PRIMARY KEY,
    SubProgramName NVARCHAR(255),
);

CREATE TABLE Project (
    ProjectId INT PRIMARY KEY,
    ActivityId INT PRIMARY KEY,
    ProjectName NVARCHAR(255),
);

CREATE TABLE Contract (
    ContractId INT PRIMARY KEY,
    ActivityId INT PRIMARY KEY,
    ContractName NVARCHAR(255),
    AreaId INT,
);

CREATE TABLE Point (
    PointId INT PRIMARY KEY,
    ActivityId INT PRIMARY KEY,
    PointName NVARCHAR(255),
);

