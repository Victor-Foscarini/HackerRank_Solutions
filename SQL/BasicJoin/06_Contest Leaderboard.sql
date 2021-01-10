select h.hacker_id,name,sum(max_score) as total
from 
Hackers as h 
inner join
(select sx.hacker_id,sx.challenge_id,max(sx.score) as max_score from Submissions as sx 
 group by sx.hacker_id,sx.challenge_id) s
on h.hacker_id = s.hacker_id
group by h.hacker_id,name 
having total>0
order by total desc, h.hacker_id asc;
