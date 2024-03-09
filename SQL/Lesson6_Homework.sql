/*依gate_count資料表做20240309功課，練習Group by / have指令*/
/*01.全省各站點2022年進站總人數*/

	/*整併gate_count有站名*/
	SELECT 名稱,站點編號,進站人數,日期
	FROM gate_count LEFT JOIN stations ON 站點編號=編號;
	
	COUNT(*) AS 筆數
	FROM gate_count
	GROUP BY 進站人數
	
	COUNT(進站人數) AS 總合
	ORDER BY 總合 DESC;

	SUM(進站人數) AS 總和
	FROM public.gate_count
	GROUP BY public.gate_count
	ORDER BY 總和 DESC;

/*02.全省各站點2022年進站總人數大於5佰萬人的站點*/
/*03.基隆火車站2020年,每月份進站人數*/
/*04.基隆火車站2020年,每月份進站人數,由多至少*/
/*05.基隆火車站2020,2021,2022,每年進站人數*/
/*06.基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/

SELECT * FROM  public.gate_count;
SELECT * FROM  public.stations;

