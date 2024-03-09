/*取出payment的所有客戶的coutomer_id(不重覆)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id

/*取出payment的所有客戶的coutomer_id(不重覆)*/
SELECT customer_id, SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;

/*整併名字一樣的客戶*/
SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY full_name
ORDER BY 總合 DESC;

/*同上以customer_id為例，如欄位一致可改為使用USING(*)函數：
	ON payment.customer_id=customer.customer_id→USING(customer_id)*/

SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY 總合 DESC;

/*顯示payment資料庫*/
SELECT * FROM payment