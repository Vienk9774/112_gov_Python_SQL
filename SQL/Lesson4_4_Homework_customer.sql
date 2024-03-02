SELECT *
FROM customer;

/* 01小題：first_name為Jamie */
SELECT *
FROM customer 
WHERE first_name LIKE 'Jamie' 

/*02小題：first_name是Jamie,同時last_name是Rice */
SELECT *
FROM customer 
WHERE first_name LIKE 'Jamie' 
AND last_name LIKE 'Rice' 

/*03小題：last_name是Rodriquez 或者 first_name是Adam */
SELECT *
FROM customer 
WHERE last_name LIKE 'Rodriquez' OR first_name LIKE 'Adam' 

/*04小題：取出first_name是Ann,Anne,Annie */
SELECT *
FROM customer 
WHERE first_name IN('Ann','Anne','Annie') 

/*05小題：取出字串開頭是Ann的first_name */
SELECT *
FROM customer 
WHERE first_name LIKE 'Ann%' 

/*06小題：取出first_name第1個字元是A,同時first_name的字元長度是3到5的資料 */
SELECT *
FROM customer 
WHERE first_name LIKE 'A%' 
AND SUBSTRING(FROM 3 FOR 3)

/*07小題：取出first_name,前3字為Bra,但last_name不是Motley */
SELECT *
FROM customer 
WHERE first_name LIKE 'Bra%' AND last_name NOT LIKE 'Motley'
