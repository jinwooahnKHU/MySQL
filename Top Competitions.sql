-- hackerrank
-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

select h.hacker_id, h.name
from submissions s
    inner join challenges c on c.challenge_id = s.challenge_id
    inner join difficulty d on d.difficulty_level = c.difficulty_level
    inner join hackers h on h.hacker_id = s.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
-- 점수도 같으면서 난이도도 같아야함
group by h.hacker_id, h.name 
-- 둘 다 기준으로 group by 해줘야함
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id 
