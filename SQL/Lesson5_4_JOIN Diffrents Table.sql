DROP TABLE 籃子_a;
DROP TABLE 籃子_b;

CREATE TABLE 籃子_a(
	a INT PRIMARY KEY,
	水果_a VARCHAR(100) NOT NULL
);

CREATE TABLE 籃子_b(
	b INT PRIMARY KEY,
	水果_b VARCHAR(100) NOT NULL
);

INSERT INTO 籃子_a (a,水果_a)
VALUES
    (1, '蘋果'),
    (2, '橘子'),
    (3, '香蕉'),
    (4, '番茄');

INSERT INTO 籃子_b (b, 水果_b)
VALUES
    (1, '橘子'),
    (2, '蘋果'),
    (3, '西瓜'),
    (4, '梨子');

SELECT * FROM 籃子_a;
SELECT * FROM 籃子_b;
SELECT * FROM 籃子_a,籃子_b;

/*聯集合INNER JOIN*/
SELECT a,水果_a,b, 水果_b
FROM 籃子_a INNER JOIN 籃子_b ON 水果_a=水果_b;

/*差集合 扣籃子b LEFT JOIN*/
SELECT a,水果_a,b, 水果_b
FROM 籃子_a LEFT JOIN 籃子_b ON 水果_a=水果_b
WHERE b IS NOT NULL;

/*差集合 會顯示非相關欄位 RIGHT JOIN*/
SELECT a,水果_a,b, 水果_b
FROM 籃子_a LEFT JOIN 籃子_b ON 水果_a=水果_b
WHERE a IS NOT NULL;

/*空集合 消去交集 OUTER JOIN*/
SELECT a,水果_a,b, 水果_b
FROM 籃子_a FULL OUTER JOIN 籃子_b ON 水果_a = 水果_b

/* full outer join with where */
SELECT a,籃子_a,b,籃子_b
FROM 籃子_a FULL OUTER JOIN 籃子_b ON 水果_a = 水果_b	
WHERE a IS NULL OR b IS NULL