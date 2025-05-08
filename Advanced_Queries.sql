SELECT Patient_ID, Name
FROM Patient p1
WHERE EXISTS
(SELECT * 
FROM Patient p2
 WHERE TIMESTAMPDIFF(YEAR, p2.DOB, CURDATE()) > 20
 AND p2.Patient_ID = p1.Patient_ID);

SELECT * 
FROM Inventory
WHERE Equipment_ID NOT IN
(SELECT Equipment_ID
FROM Treatment 
WHERE Item_Name = 'Plier');

SELECT *
FROM Insurance
WHERE Coverage NOT IN
    (SELECT Total_Cost
        FROM Payment
        WHERE Total_Cost < 500.00);

SELECT COUNT(Credit_or_Debit) as Credit_Card_User
FROM Payment
WHERE Credit_or_Debit = 'Credit';

SELECT Credit_or_Debit, Credit_or_Debit AS Method, SUM(Total_Cost) AS Total_Cost
FROM Payment
GROUP BY Credit_or_Debit;

SELECT Patient_ID
FROM Insurance
WHERE Possess = 'No'
UNION
(SELECT Patient_ID
FROM Payment
WHERE Total_Cost > 900);

SELECT DOB, TIMESTAMPDIFF(YEAR, DOB, CURDATE()) AS age
FROM Patient
HAVING age > 30;

SELECT * FROM Patient;

SELECT SUM(Quantity) As Total_Inventory
FROM Inventory;