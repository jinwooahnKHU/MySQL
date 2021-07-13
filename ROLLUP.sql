# 부분 총계를 보여주는 ROLLUP
# region이 gender에 비해 우선순위로 groupby 되었으므로, 
# region에 대한 부분 총계를 계산한다.
SELECT 
    SUBSTRING(address, 1, 2) as region,
    gender,
    COUNT(*)
FROM copang_main.member
GROUP by
    SUBSTRING(address, 1, 2),
    gender
WITH ROLLUP 
HAVING region IS NOT null
ORDER by
    region ASC,
    gender DESC;