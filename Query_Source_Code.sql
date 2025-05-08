SELECT * 
FROM Patient;

SELECT DISTINCT Patient_ID AS No_insurance
FROM Insurance
WHERE Possess = 'No'
ORDER BY Patient_ID;

SELECT * 
FROM Appointment
WHERE Procedures= 'Teeth Cleanings';

SELECT Item_Name
FROM Inventory
WHERE Quantity > 5;

SELECT *
FROM Insurance
WHERE Company= 'Healthy Dentist';

SELECT Patient.DOB,
TIMESTAMPDIFF(YEAR, Patient.DOB, CURDATE()) AS age
FROM Patient
WHERE TIMESTAMPDIFF(YEAR, Patient.DOB, CURDATE()) < 21;

SELECT Company_Name
FROM Supplier
WHERE NOT(Company_Name ='Toothache Escape'); 

SELECT Credit_or_Debit, Total_Cost
FROM Payment
WHERE Credit_or_Debit= "Credit"
AND Total_Cost>= 100;

SELECT Past_Procedures AS Patient4_Past_Procedures
FROM Medical_history
WHERE Patient_ID = 4
ORDER BY Past_Procedures;

SELECT Username, Dentist_ID
FROM Login_Info
WHERE Dentist_ID = 1;

SELECT Procedure_Name
FROM Treatment
WHERE Equipment_ID > 2;
------------------------------------------------------------------------
SELECT l.Username, d.Dentist_ID, p.Name
FROM Login_Info l, Dentist d, Patient p
WHERE d.Dentist_ID = 1
AND d.Patient_ID = p.Patient_ID
AND l.Dentist_ID = d.Dentist_ID;

SELECT s.Company_Name, i.Item_Name
FROM Supplier s, Inventory i
WHERE s.Supplier_ID = i.Supplier_ID;

SELECT Patient.Patient_ID, Dentist.Name
FROM Patient, Dentist
WHERE Dentist.Name= 'Modesty Dwight'
AND Dentist.Patient_ID = Patient.Patient_ID
ORDER BY Patient_ID;
------------------------------------------------------------------------
CREATE VIEW Mid_Coverage AS
SELECT *
FROM Insurance
WHERE Coverage > 550
AND Coverage < 1000;

SELECT * FROM Mid_Coverage;

CREATE VIEW Inventory_Count AS
SELECT *
FROM Inventory
WHERE Quantity > 0;

SELECT * FROM Inventory_Count;

CREATE VIEW Patient_Ages AS
SELECT Patient.DOB,
TIMESTAMPDIFF(YEAR, Patient.DOB, CURDATE()) as Age
FROM Patient
WHERE TIMESTAMPDIFF(YEAR, Patient.DOB, CURDATE()) > 20;

SELECT * FROM Patient_Ages;