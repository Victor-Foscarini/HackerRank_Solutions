set @row1=0,@row2=0,@row3=0,@row4=0;
select min(Doctor),min(Professor),min(Singer),min(Actor) from (
select 
    case
    when occupation='Doctor' then (@row1:=@row1+1)
    when occupation='Professor' then (@row2:=@row2+1)
    when occupation='Singer' then (@row3:=@row3+1)
    when occupation='Actor' then (@row4:=@row4+1)
    end as Rownumber,
   
    case when occupation='Doctor' then Name end as Doctor,
    case when occupation='Professor' then Name end as Professor,
    case when occupation='Singer' then Name end as Singer,
    case when occupation='Actor' then Name end as Actor
from occupations order by Name
) temp group by RowNumber;
