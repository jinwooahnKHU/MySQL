-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

select concat(Name, '(', substring(Occupation, 1,1), ')') from OCCUPATIONS
ORDER BY NAME;

select CONCAT('There are a total of ', count(occupation), ' ', lower(occupation), 's.')
from OCCUPATIONS
GROUP BY OCCUPATION
order by count(occupation), occupation;
