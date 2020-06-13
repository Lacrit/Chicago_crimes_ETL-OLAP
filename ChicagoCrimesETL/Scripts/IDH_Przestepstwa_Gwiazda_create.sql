-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-06-13 07:40:11.218

-- tables
-- Table: Crime
CREATE TABLE Crime (
    CrimeId int  NOT NULL,
    LocationTypeId int  NOT NULL,
    TimeId int  NOT NULL,
    LocationId int  NOT NULL,
    CrimeCharacteristicId int  NOT NULL,
    CriemTypeId int  NOT NULL,
    NumberOfCrimes int  NOT NULL,
    CONSTRAINT CrimeId PRIMARY KEY  (CrimeId)
);

-- Table: Crime_Characteristic
CREATE TABLE Crime_Characteristic (
    CrimeCharacteristicId int  NOT NULL IDENTITY,
    Description nvarchar(255)  NOT NULL,
    IsArrested bit  NOT NULL,
    IsDomestic bit  NOT NULL,
    FBICode int  NOT NULL,
    FBI nvarchar(255)  NOT NULL,
    CONSTRAINT Crime_Characteristic_pk PRIMARY KEY  (CrimeCharacteristicId)
);

-- Table: Crime_Type
CREATE TABLE Crime_Type (
    CrimeTypeId int  NOT NULL IDENTITY,
    Type nvarchar(255)  NOT NULL,
    CONSTRAINT Crime_Type_pk PRIMARY KEY  (CrimeTypeId)
);

-- Table: Location
CREATE TABLE Location (
    LocationId int  NOT NULL IDENTITY,
    Lat decimal(12,9)  NOT NULL,
    Lng decimal(12,9)  NOT NULL,
    CommunityAreaCode int  NOT NULL,
    CommunityArea varchar(255)  NOT NULL,
    District int  NOT NULL,
    CONSTRAINT Location_pk PRIMARY KEY  (LocationId)
);

-- Table: Location_Type
CREATE TABLE Location_Type (
    LocationTypeId int  NOT NULL IDENTITY,
    Type nvarchar(255)  NOT NULL,
    CONSTRAINT Location_Type_pk PRIMARY KEY  (LocationTypeId)
);

-- Table: Time
CREATE TABLE Time (
    TimeId int  NOT NULL IDENTITY,
    Time time(7)  NOT NULL,
    Year int  NOT NULL,
    Day int  NOT NULL,
    Month int  NOT NULL,
    DayOfWeek int  NOT NULL,
    Date datetime  NOT NULL,
    DayOfWeekPolish int  NOT NULL,
    CONSTRAINT Time_pk PRIMARY KEY  (TimeId)
);

-- foreign keys
-- Reference: Crime_Crime_Characteristic (table: Crime)
ALTER TABLE Crime ADD CONSTRAINT Crime_Crime_Characteristic
    FOREIGN KEY (CrimeCharacteristicId)
    REFERENCES Crime_Characteristic (CrimeCharacteristicId);

-- Reference: Crime_Crime_Type (table: Crime)
ALTER TABLE Crime ADD CONSTRAINT Crime_Crime_Type
    FOREIGN KEY (CriemTypeId)
    REFERENCES Crime_Type (CrimeTypeId);

-- Reference: Crime_Date (table: Crime)
ALTER TABLE Crime ADD CONSTRAINT Crime_Date
    FOREIGN KEY (TimeId)
    REFERENCES Time (TimeId);

-- Reference: Crime_Location (table: Crime)
ALTER TABLE Crime ADD CONSTRAINT Crime_Location
    FOREIGN KEY (LocationId)
    REFERENCES Location (LocationId);

-- Reference: Crime_Location_Type (table: Crime)
ALTER TABLE Crime ADD CONSTRAINT Crime_Location_Type
    FOREIGN KEY (LocationTypeId)
    REFERENCES Location_Type (LocationTypeId);

-- End of file.

