-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
-- setting variable in mysql

set @rowIndex = -1;
select round(avg(lat_n),4)
from
    (select @rowIndex := @rowIndex + 1 as RowNumber,
            lat_n
    from
        station
    order by
        lat_n
    ) sub1
where RowNumber in (ceil(@rowIndex / 2), floor(@rowIndex / 2))
