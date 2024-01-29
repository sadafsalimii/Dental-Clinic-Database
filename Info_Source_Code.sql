INSERT INTO Patient (Patient_ID, Name, Email, DOB, PhoneNum)
VALUES (1, 'Janelle Fachtna', 'jfach@gmail.com', '04/23/1989', 2267416831),
       (2, 'Koloman Katherina', 'kkath@gmail.com', '07/07/1996', 5193021170),
       (3, 'Vulcan Dorothea', 'vdoro@gmail.com', '05/21/1994', 2268042790),
       (4, 'Gervasius Hadrianus', 'ghadr@gmail.com', '01/22/1993', 6471213214),
       (5, 'Jelka Gabriel', 'jgabr@gmail.com', '12/03/2003', 4508981170);

INSERT INTO Dentist (Dentist_ID, Patient_ID, Name, Email, PhoneNum)
VALUES (4, 3, 'Modesty Dwight', 'mdwig@gmail.com', 4183769985),
       (3, 2, 'Radhika Chen', 'rchen@gmail.com', 2264840226),
       (2, 1, 'Ankit Wulan', 'awula@gmail.com', 2049973515),
       (1, 3, 'Gracie Apolônia', 'gapol@gmail.com', 2896120060);

INSERT INTO Login_Info (Username, Password, Dentist_ID)
VALUES ('mdwig6515', 'jMK6qM"]', 4),
       ('rchen0732', 'Ur6w)=Rr', 3),
       ('awula1259', 'n6^d$N=Z', 2),
       ('gapol8322', '7cD,%AAX', 1);

INSERT INTO Supplier (Supplier_ID, Company_Name)
VALUES (1, 'Tooth and Nail'),
	   (2, 'Cavity Central'),
	   (3, 'Toothache Escape');

INSERT INTO Inventory (Equipment_ID, Supplier_ID, Item_Name, Quantity)
VALUES (1, 1, 'Mirror', 7),
       (2, 2, 'Plier', 10),
       (3, 3, 'Explorer', 6),
       (4, 2, 'Excavator',10),
	   (5, 1, 'Dental Drill',5),
       (6, 3, 'Flouride',0);

INSERT INTO Medicine (Medicine_ID, Med_Name)
VALUES (1, 'Acetaminophen'),
	   (2, 'Minocycline '),
       (3, 'Corticosteroids');

INSERT INTO Prescription (Prescription_ID, Medicine_ID, Prescription_Name, Quantity)
VALUES (1, 1, 'Pain relief', 5),
	   (2, 2, 'Gum stuff', 1),
       (3, 3, 'Anti-inflammatory', 0);
       
INSERT INTO Treatment (Procedure_ID, Procedure_Name, Equipment_ID)
VALUES (1, 'Teeth Cleanings', 4),
       (4, 'Extractions', 2),
       (2, 'Fillings', 3),
       (3, 'Teeth Whitening', 1);
       
INSERT INTO Appointment (Procedure_ID, Patient_ID, Date)
VALUES (3, 3, '2023-03-17 10:30:00'),
       (1, 2, '2023-02-20 12:00:00'),
       (4, 1, '2023-04-21 13:30:00'),
       (1, 3, '2023-05-01 14:00:00');
       
INSERT INTO Medical_history (Med_ID, Patient_ID, Medical_Notes, Past_Procedures, D_Vist)
VALUES (1, 1, 'receding gums, wisdom teeth removed', 'root canal', '2023-01-23'),
       (2, 2, 'sensitivity to hot and cold temps', 'XRAY', '2020-11-15'),
       (3, 3, 'diabetes, oral cancer', 'fluoride treatment', '2021-06-08'),
       (4, 4, 'Rejects girls on vday, AIDS', 'cleaning', '2022-07-19'),
       (5, 4, 'Rejects girls on vday, AIDS', 'fillings','2022-12-07');

INSERT INTO Payment (Payment_ID, Patient_ID, Credit_or_Debit, Total_cost)
VALUES (1, 1, 'Credit', 532.00),
       (2, 2, 'Credit', 690.00),
       (3, 3, 'Debit', 1234.50),
       (4, 4, 'Credit', 430.50),
       (5, 5, 'Debit', 250.00);

INSERT INTO Insurance (Patient_ID, Possess, Company, Coverage)
VALUES (1, 'Yes', 'The Dental Doctor', 532.00),
       (2, 'Yes', 'Healthy Dentist', 690.00),
       (3, 'Yes', 'Aetna Dentistry', 1234.50),
       (4, 'Yes','Healthy Dentist', 430.50),
       (5, 'No', NULL, NULL);