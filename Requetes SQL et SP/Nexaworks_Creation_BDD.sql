CREATE DATABASE NexaWorks_Ticketting;
GO

USE NexaWorks_Ticketting;
GO

CREATE TABLE OperatingSystem (
    id INT NOT NULL PRIMARY KEY,
    os VARCHAR(255) NOT NULL
);

CREATE TABLE TypeOfDevice (
    id INT NOT NULL PRIMARY KEY,
    deviceType VARCHAR(255) NOT NULL
);

CREATE TABLE OsTypeOfDevice (
    osId INT NOT NULL,
    typeOfDeviceId INT NOT NULL,
    PRIMARY KEY (osId, typeOfDeviceId),
    FOREIGN KEY (osId) REFERENCES OperatingSystem(id),
    FOREIGN KEY (typeOfDeviceId) REFERENCES TypeOfDevice(id)
);


CREATE TABLE Products (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Version (
    id INT NOT NULL PRIMARY KEY,
    version VARCHAR(255) NOT NULL
);

CREATE TABLE Status (
    id INT NOT NULL PRIMARY KEY,
    status VARCHAR(255) NOT NULL
);

CREATE TABLE Tickets (
    id INT NOT NULL PRIMARY KEY,
    productId INT NOT NULL,
    versionId INT NOT NULL,
    osId INT NOT NULL,
    creationDate DATE NOT NULL,
    fixDate DATE,
    statusId INT NOT NULL,
    problem TEXT NOT NULL,
    fix TEXT,
    FOREIGN KEY (productId) REFERENCES Products(id),
    FOREIGN KEY (versionId) REFERENCES Version(id),
    FOREIGN KEY (osId) REFERENCES OperatingSystem(id),
    FOREIGN KEY (statusId) REFERENCES Status(id)
);

SET DATEFORMAT ymd;

