select 
case
    when P is null then concat(N," Root")
    when N in (select P from BST) then concat(N," Inner")
    else concat(N," Leaf")
end
from BST
order by N asc
