-- hackerrank
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- N과 node type을 결정할 subquery를 짜준다. case when 사용
select N, (
    case when P is null then 'Root'
        when N not in (select P from BST where P is not null) then 'Leaf'
        else 'Inner' end
) as nodetype
from BST
order by N;
