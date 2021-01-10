select W.id, WP.age, W.coins_needed, W.power
from Wands as W inner join Wands_Property as WP on W.code = WP.code 
where is_evil=0 and W.coins_needed = 
(select min(WX.coins_needed) from Wands as WX inner join Wands_Property as WPX 
on WX.code = WPX.code where WPX.age = WP.age and WX.power = W.power)
order by power desc, age desc;
