-- select ordernumber  get all order numbers (without repetition) that contain any product starting with code S18 and price more than 100.
SELECT DISTINCT orderNumber FROM `orderdetails` WHERE productCode like "S18%" AND priceEach > 100;



-- get all payments that were made on day 5 or 6 
SELECT * FROM `payments` WHERE paymentDate like "%-%-05" OR paymentDate LIKE "%-%-06";
-- another way to get day 5 or 6
SELECT * FROM payments WHERE DAY(paymentDate) IN (5, 6);

--  get the fifth-highest credit limit of the customers who (live in the USA and their phone number contains 5555).
SELECT customerNumber,customerName, creditLimit,phone, country FROM `customers` WHERE country = "USA" AND phone like "%5555%" ORDER BY creditLimit DESC limit 1 OFFSET 4;