-- hackerrank join
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true


select sub1.hacker_id, hackers.name, sum(sub1.score) as total_score
from
(select hacker_id, challenge_id, MAX(score) as score
from submissions
group by hacker_id, challenge_id) as sub1
join hackers
on hackers.hacker_id = sub1.hacker_id
group by sub1.hacker_id , hackers.name
-- why hackers.name have to be included in group by?
-- because hackers.name has to be selected?
having total_score > 0
order by total_score desc, sub1.hacker_id 

