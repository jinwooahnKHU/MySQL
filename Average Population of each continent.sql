-- hackerrank
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

select country.continent, floor(avg(city.population))
from country join city
on country.code = city.countrycode
group by country.continent
-- 각 continent의 평균 city pop이므로 group by
