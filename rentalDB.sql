use s7183882
--EIN means Employer ID Number
CREATE TABLE Company
(
	Name varchar(255) NOT NULL, 
	EIN int NOT NULL, 
	CompAddress varchar (60) NOT NULL,
	TotalEngineer varchar(60) NOT NULL,
	PRIMARY KEY (Name)
);

CREATE TABLE Phone
(
	CompName varchar(255) NOT NULL,
	Phone varchar (16)
);


CREATE TABLE Equipment
(
	EquipID int NOT NULL,
	CompanyName varchar(255),
	Manufacturer varchar (60) NOT NULL,
	PurchaseYear int NOT NULL,
	Price MONEY NOT NULL,
	PRIMARY KEY (EquipID)
);

--lets break specialty into a separate table
CREATE TABLE Engineer
(
	EngNo int NOT NULL,
	Fname varchar (60) NOT NULL,
	MI char NOT NULL,
	Lname varchar (60) NOT NULL,
	Salary real NOT NULL,
	Degree varchar (30) NOT NULL,
	CompanyName varchar(255),
	DateJoined date,
	PRIMARY KEY (EngNo)
);

CREATE TABLE Specialty
(
	SpecialtyID int,
	Specialty varchar(255),
	PRIMARY KEY (SpecialtyID)
);

CREATE TABLE EngSpecialty
(
	EngNo int NOT NULL,
	SpecialtyID int NOT NULL
);

CREATE TABLE Fault
(
	FaultID	int,
	FaultDescription varchar (255),
	EquipmentID int,
	FaultTypeID int,
	PRIMARY KEY (FaultID)
);

CREATE TABLE FaultType
(
	TypeID int,
	TypeName varchar(255),
	PRIMARY KEY (TypeID)
);
CREATE TABLE EngFault
(
	EngineerNo int,
	FaultID int,
	FaultDate date,
	HoursWorked real
);

ALTER TABLE Phone
	ADD CONSTRAINT FK_PHONE_COMPANY
	FOREIGN KEY (CompName) REFERENCES Company(Name)

ALTER TABLE Equipment
	ADD CONSTRAINT FK_EQUIPMENT_COMPANY
	FOREIGN KEY (CompanyName) REFERENCES Company(Name)

ALTER TABLE Engineer
	ADD CONSTRAINT FK_ENGINEER_COMPANY
	FOREIGN KEY (CompanyName) REFERENCES Company(Name)

ALTER TABLE EngSpecialty
	ADD CONSTRAINT FK_ENGSPECIALTY_ENGINEER
	FOREIGN KEY (EngNo) REFERENCES Engineer(EngNo)

ALTER TABLE EngSPecialty
	ADD CONSTRAINT FK_ENGSPECIALTY_SPECIALTY
	FOREIGN KEY (SpecialtyID) REFERENCES Specialty(SpecialtyID)

ALTER TABLE Fault
	ADD CONSTRAINT FK_FAULT_EQUIPMENT
	FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipID)


ALTER TABLE EngFault
	ADD CONSTRAINT FK_ENGFAULT_ENGINEER
	FOREIGN KEY (EngineerNo) REFERENCES Engineer(EngNo)

ALTER TABLE EngFault
	ADD CONSTRAINT FK_ENGFAULT_FAULT
	FOREIGN KEY (FaultID) REFERENCES Fault(faultID)
