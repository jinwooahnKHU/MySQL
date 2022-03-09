-- https://programmers.co.kr/learn/courses/30/lessons/59045#fn1
-- ins의 중성화에는 intact. outs에는 spayed, neutered
-- id, 종, 이름 조회. 아이디 순으로 조회
select 
    animal_ins.animal_id,
    animal_ins.animal_type,
    animal_ins.name
from
    animal_ins left outer join animal_outs
on
    animal_ins.animal_id = animal_outs.animal_id
where
    animal_ins.sex_upon_intake like 'Intact%'
    and
    (
    animal_outs.sex_upon_outcome like 'Spayed%'
    or
    animal_outs.sex_upon_outcome like 'Neutered%'
    )
order by 
    animal_ins.animal_id
