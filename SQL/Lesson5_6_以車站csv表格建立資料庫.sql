DROP TABLE stations;

/*建立表格*/
CREATE TABLE IF NOT EXISTS stations(
	編號 INT PRIMARY KEY,
	名稱 VARCHAR(20) NOT NULL,
	英文名稱 VARCHAR(50),
	地名 VARCHAR(20),
	英文地名 VARCHAR(50),
	地址 VARCHAR(255),
	英文地址 VARCHAR(255),
	電話 VARCHAR(20),
	GPS VARCHAR(50),
	Youbike BOOL
);

/*手動加入政府開放平台csv資料*/

SELECT * FROM stations

SELECT COUNT(*) AS 筆數
FROM stations;