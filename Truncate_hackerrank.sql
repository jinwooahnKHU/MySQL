-- truncate problem hackerrank
-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- truncate : ㅂㅓㄹㅣㅁ
select truncate(sum(LAT_N),4)
from 
    station
where
    LAT_N > 38.7880 and LAT_N < 137.2345
