CREATE TABLE Patient(
    Patient_ID INT,
    Name varchar(30) NOT NULL,
    Email varchar(30) NOT NULL,
    DOB varchar(10) NOT NULL,
    PhoneNum varchar(10) NOT NULL,
    
    PRIMARY KEY(Patient_ID)
);
CREATE TABLE Dentist(
	Dentist_ID INT,
    Patient_ID INT,
    Name varchar(30) NOT NULL,
    Email varchar(30) NOT NULL,
    PhoneNum varchar(10) NOT NULL,
    PRIMARY KEY(Dentist_ID),
    FOREIGN KEY(Patient_ID)
		REFERENCES Patient(Patient_ID)
);
CREATE TABLE Login_Info(
	Username varchar(20),
    Password varchar(20),
    Dentist_ID INT,
    PRIMARY KEY(Username),
    FOREIGN KEY(Dentist_ID)
		REFERENCES Dentist(Dentist_ID)
);
CREATE TABLE Supplier(
    Supplier_ID INT,
    Company_Name varchar(30),
    PRIMARY KEY(Supplier_ID)
); 
CREATE TABLE Inventory(
    Equipment_ID INT,
    Supplier_ID INT,
    Item_Name varchar(30) NOT NULL,
    Quantity INT DEFAULT 0,
    PRIMARY KEY(Equipment_ID),
    FOREIGN KEY(Supplier_ID)
		REFERENCES Supplier(Supplier_ID)
);
CREATE TABLE Medicine(
	Medicine_ID INT,
    Med_Name varchar(30),
    PRIMARY KEY(Medicine_ID)
);
CREATE TABLE Prescription(
	Prescription_ID INT,
    Medicine_ID INT,
    Prescription_Name varchar(30),
    Quantity INT DEFAULT 0,
    PRIMARY KEY(Prescription_ID),
    FOREIGN KEY(Medicine_ID)
		REFERENCES Medicine(Medicine_ID)
);
CREATE TABLE Treatment(
	Procedure_ID INT,
    Procedure_Name varchar(30) NOT NULL,
    Equipment_ID INT,
    Prescription_ID INT,
    PRIMARY KEY(Procedure_ID),
    FOREIGN KEY(Equipment_ID)
		REFERENCES Inventory(Equipment_ID),
	FOREIGN KEY(Prescription_ID)
		REFERENCES Prescription(Prescription_ID)
);
CREATE TABLE Appointment(
    Procedure_ID INT,
    Patient_ID INT,
    Date datetime,
    FOREIGN KEY(Procedure_ID)
		REFERENCES Treatment(Procedure_ID),
	FOREIGN KEY(Patient_ID)
        REFERENCES Patient(Patient_ID),
	PRIMARY KEY(Patient_ID, Date),
    CONSTRAINT Patient FOREIGN KEY(Patient_ID)
		REFERENCES Patient(Patient_ID)
);
CREATE TABLE Payment(
	Payment_ID INT,
	Patient_ID INT,
	Credit_or_Debit varchar(8) NOT NULL,
	Total_Cost numeric(6,2) NOT NULL,
    PRIMARY KEY(Payment_ID),
    FOREIGN KEY(Patient_ID)
		REFERENCES Patient(Patient_ID)
);
CREATE TABLE Insurance(
	Patient_ID INT,
	Company varchar(30),
	Coverage numeric(6,2),
	Possess varchar(4) NOT NULL,
    FOREIGN KEY(Patient_ID)
		REFERENCES Patient(Patient_ID)
);
CREATE TABLE Medical_history(
	Med_ID INT,
	Patient_ID INT,
	Medical_Notes varchar(50),
	Past_Procedures varchar(50),
	D_Vist date,
    PRIMARY KEY(Med_ID),
    FOREIGN KEY(Patient_ID)
		REFERENCES Patient(Patient_ID)
);