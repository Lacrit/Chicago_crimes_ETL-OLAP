-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-06-13 07:40:11.218

-- foreign keys
ALTER TABLE Crime DROP CONSTRAINT Crime_Crime_Characteristic;

ALTER TABLE Crime DROP CONSTRAINT Crime_Crime_Type;

ALTER TABLE Crime DROP CONSTRAINT Crime_Date;

ALTER TABLE Crime DROP CONSTRAINT Crime_Location;

ALTER TABLE Crime DROP CONSTRAINT Crime_Location_Type;

-- tables
DROP TABLE Crime;

DROP TABLE Crime_Characteristic;

DROP TABLE Crime_Type;

DROP TABLE Location;

DROP TABLE Location_Type;

DROP TABLE Time;

-- End of file.

