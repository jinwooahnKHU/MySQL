-- hackerrank
-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- replace( 열, 바꾸고자 하는 값, 바꾸려는 값)
select ceil(avg(salary) - avg(replace(salary,0,'')))
from   employees

