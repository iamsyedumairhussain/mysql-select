
*SELECT gender AS 'Student gender'FROM personal WHERE gender = 'm';

*SELECT * FROM personal WHERE gender != 'm'; || SELECT * FROM personal WHERE gender <> 'm';

*SELECT * FROM personal WHERE age >= 18 and age <= 25;
*SELECT * FROM personal WHERE age >= 18 or age <= 25;

*SELECT * FROM personal WHERE NAME = 'Myra akber' OR gender = 'M';
*SELECT * FROM personal WHERE not gender  = 'M'; 
*SELECT * FROM personal WHERE gender IN ('M','F');  (short hand for or)
*SELECT * FROM personal WHERE gender not IN ('M','F'); 
*SELECT * FROM personal WHERE age between 18 and 25; 
*SELECT * FROM personal WHERE not age between 18 and 25; 
// we can use between operator in string and date as well.



// _ is for single character and % is for multiple characters
*SELECT cust_name FROM customer WHERE cust_name LIKE "_i%l" LIMIT 10;
*SELECT cust_name FROM customer WHERE cust_name LIKE "__i%l" LIMIT 10;
*SELECT cust_name FROM customer WHERE cust_name LIKE "s%" OR cust_name LIKE "a%" LIMIT 10;
*SELECT cust_name FROM customer WHERE cust_name not LIKE "s%" OR cust_name not LIKE "a%" LIMIT 10;
*SELECT cust_name FROM customer WHERE binary  cust_name LIKE "a%" lIMIT 10; (matches small and capital characters)


*SELECT cust_name FROM customer WHERE cust_name REGEXP "mi";(anywhere)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "^mi";(starting)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "an$";(ending)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "an|ar|ab"; (anywhere)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "^an|ar|ab$"; (starts with an | anywhere ar | ends with ab)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "[umair]"; (separately checks all characters)
*SELECT cust_name FROM customer WHERE cust_name REGEXP "[umair]a";(it will match (ua | ma | aa | ia | ra) 
*SELECT cust_name FROM customer WHERE cust_name REGEXP "^[ab]"; (starting letters would be either a or b).
*SELECT cust_name FROM customer WHERE cust_name REGEXP "^[a-d]";(starting letters would be either a | b | c | d.)



*SELECT cust_name FROM customer ORDER BY cust_name desc LIMIT 10;
*SELECT cust_name,cust_city FROM customer ORDER BY cust_name, cust_city desc LIMIT 10;
*SELECT distinct cust_city  FROM customer ORDER BY cust_name DESC  LIMIT 10;
*SELECT distinct cust_city,cust_name FROM customer ORDER BY cust_name DESC  LIMIT 10;
*SELECT * FROM customer WHERE cust_city IS not NULL;
*SELECT * FROM customer WHERE cust_city IS  NULL;
*SELECT cust_name FROM customer LIMIT 10 OFFSET 2;
SELECT COUNT(*) FROM orders;
SELECT sum(ORD_AMOUNT) FROM orders;
SELECT MAX(PAYMENT_AMT) FROM customer;
SELECT min(PAYMENT_AMT) FROM customer;
SELECT avg(PAYMENT_AMT) FROM customer;
