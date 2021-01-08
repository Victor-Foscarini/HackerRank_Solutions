select Hackers.hacker_id,Hackers.name from
Submissions 
inner join 
Challenges on Submissions.challenge_id = Challenges.challenge_id
inner join
Difficulty on Challenges.difficulty_level = Difficulty.difficulty_level
inner join
Hackers on Submissions.hacker_id = Hackers.hacker_id
where Submissions.score = Difficulty.score
group by Hackers.hacker_id,Hackers.name
having count(*)>1
order by count(*) desc, hacker_id asc;
