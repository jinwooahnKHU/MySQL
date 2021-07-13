# 데이터의 NULL과 ROLLUP의 NULL의 차이 
#GROUPING 함수 

SELECT YEAR(sign_up_day) AS s_year, 
	gender, SUBSTRING(address, 1, 2) AS region,
    GROUPING(YEAR(sign_up_day)), GROUPING(gender),
    GROUPING(SUBSTRING(address, 1, 2)),
	COUNT(*)
FROM copang_main.member
GROUP BY YEAR(sign_up_day), gender, SUBSTRING(address, 1, 2)
WITH ROLLUP
ORDER BY s_year DESC;


