select if(Marks<70,NULL,Name),Grade,Marks from Students join Grades where Marks between Min_Mark and Max_Mark order by Grade desc,Name;
