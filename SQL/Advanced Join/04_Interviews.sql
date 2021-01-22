select con.contest_id,
con.hacker_id,
con.name,
sum(s.total_submissions),
sum(s.total_accepted_submissions),
sum(v.total_views),
sum(v.total_unique_views) 
from Contests con 
inner join 
Colleges col on con.contest_id = col.contest_id 
inner join 
Challenges ch on col.college_id = ch.college_id
left join 
(select challenge_id,sum(total_views) as total_views,sum(total_unique_views) as total_unique_views from View_Stats group by challenge_id ) v on ch.challenge_id = v.challenge_id
left join 
(select challenge_id,sum(total_submissions) as total_submissions,sum(total_accepted_submissions)  as total_accepted_submissions from Submission_Stats group by challenge_id) s on ch.challenge_id = s.challenge_id
group by con.contest_id,con.hacker_id,con.name 
having sum(s.total_submissions)<>0 or sum(s.total_accepted_submissions)<>0 or sum(v.total_views)<>0 or sum(v.total_unique_views)<>0
order by contest_id;
