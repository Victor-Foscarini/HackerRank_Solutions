select salary*months as earnings,count(*)
from Employee
group by earnings desc limit 1;
