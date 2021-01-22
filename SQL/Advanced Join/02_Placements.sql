select s.name from
Students s inner join Friends f on s.ID = f.ID
inner join Packages p on f.ID = p.ID
inner join Packages px on f.friend_ID = px.ID
where px.Salary > p.salary order by px.salary
