-- hackerrank Q.The report
-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- join의 on값을 사이값 조건으로 설정해도 된다.
-- select 의 if문

select IF(G.grade >= 8, S.name, 'NULL'), G.Grade, S.Marks
from students as s
inner join grades as g
on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name, s.marks
