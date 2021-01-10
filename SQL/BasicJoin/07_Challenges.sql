select H.hacker_id, H.name, count(C.challenge_id) as n 
from Hackers as H inner join Challenges as C on H.hacker_id = C.hacker_id 
group by H.hacker_id,H.name 
having

n = (select max(counts.n) from  (select count(Cx.challenge_id) as n from Hackers as Hx inner join Challenges as Cx on Hx.hacker_id = Cx.hacker_id group by Hx.hacker_id,Hx.name) as counts)

or

n in (select counts.n from 
(select count(Cx.challenge_id) as n from Hackers as Hx inner join Challenges as Cx 
on Hx.hacker_id = Cx.hacker_id group by Hx.hacker_id,Hx.name) as counts 
group by counts.n having count(*) = 1)

order by n desc, H.hacker_id asc;
