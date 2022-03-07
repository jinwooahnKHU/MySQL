-- hackerrank
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
select distinct(sub1.city)
from
(select city, right(city, 1) as r
from station) as sub1
where sub1.r in ('a', 'e', 'i', 'o', 'u')
