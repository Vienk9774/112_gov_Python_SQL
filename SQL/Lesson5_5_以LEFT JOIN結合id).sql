/*要DROP得先刪子資料表，再刪除父資料表*/
DROP TABLE IF EXISTS 聯絡人;
DROP TABLE IF EXISTS 客戶;

/*建立PERNET TALBLE*/
CREATE TABLE IF NOT EXISTS 客戶(
	客戶_id SERIAL,
	客戶名稱 VARCHAR(255) NOT NULL,
	PRIMARY KEY (客戶_id)
);

/*建立子資料表*/
CREATE TABLE IF NOT EXISTS 聯絡人(
	聯絡人id SERIAL,
	客戶id INT,
	聯絡人姓名 VARCHAR(255) NOT NULL,
	電話 VARCHAR(15),
	Email VARCHAR(100),
	PRIMARY KEY (聯絡人id),
	FOREIGN KEY(客戶id) REFERENCES 客戶(客戶_id)
	/*↑上述無特別說明，預設PERENTTABLE的ID是不能刪除的*/
	ON DELETE CASCADE
	/*↑說明刪除欄位時標註為NULL*/
);

INSERT INTO 客戶(客戶名稱)
VALUES('遠傳電信'),
	 ('台灣大哥大');
	 
INSERT INTO 聯絡人(客戶id,聯絡人姓名,電話,Email)
VALUES (1,'John Doe','(408)-111-1234','john.doe@bluebird.dev'),
	   (1,'Jane Doe','(408)-111-1235','jane.doe@bluebird.dev'),
	   (2,'David Wright','(408)-222-1234','david.wright@dolphin.dev');
	   
DELETE FROM 客戶
WHERE 客戶_id = 1;

SELECT * FROM 客戶;
SELECT * FROM 聯絡人;

/*以LEFT JOIN 取客戶與聯絡人名稱相同資料*/
SELECT 聯絡人id,客戶名稱,聯絡人姓名,電話,Email
FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id

/*以LEFT JOIN 取同客戶名稱中相同資料*/
SELECT 聯絡人id,客戶名稱,聯絡人姓名,電話,Email
FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id
WHERE 客戶名稱='遠傳電信'