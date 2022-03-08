-- https://programmers.co.kr/learn/courses/30/lessons/59044

select animal_ins.name, animal_ins.datetime
from animal_ins left outer join animal_outs
-- left outer join은 조건에 부합되지 않더라도 왼쪽은 전부 출력임. 따라서 
-- 상세조건을 아래 where문으로 걸어줘야함
on animal_ins.animal_id = animal_outs.animal_id
where animal_outs.animal_id is null
order by animal_ins.datetime
limit 3;
