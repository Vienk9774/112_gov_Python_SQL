DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

/*顯示目前表格*/
SELECT *
FROM student;

/*只篩姓名*/
SELECT name 
FROM student;

/*只篩姓名跟主修*/
SELECT name,major 
FROM student;

/*標題改中文*/
SELECT name AS 姓名,major AS 主修,score AS 得分 
FROM student;

/*以成績升冪排序，只取兩名*/
SELECT * FROM student
ORDER BY score ASC
LIMIT 3;

/*[指令]WHERE：顯示 英語 且 分數 60以下數列*/
SELECT *
FROM student 
WHERE major = '英語' AND score <60;

/*[指令]OR：顯示 英語 或 分數 60以上數列 */
SELECT *
FROM student 
WHERE major = '英語' OR score >60;

/*[指令]WHERE：顯示 含 英語 或 生物 或 歷史 數列 */
SELECT *
FROM student 
WHERE major IN('英語','生物','歷史') 
/*同等於 WHERE major = '英語',or'生物',or'歷史' */

/*[指令]WHERE NOT：顯示 不是 小黃 學生的成績數列 */
SELECT *
FROM student 
WHERE not name = '小黃'

/*[指令]WHERE XX like：顯示第一字是 小X 學生的，%為任意文字 */
SELECT *
FROM student 
WHERE name LIKE '小%'

/*[指令]WHERE XX like：顯示 X黃X 學生的，%為任意文字 */
SELECT *
FROM student 
WHERE name LIKE '%黃%'