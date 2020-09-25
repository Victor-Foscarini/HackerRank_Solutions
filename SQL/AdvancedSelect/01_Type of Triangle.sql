select 
    case
        when 2*greatest(a,b,c)>=a+b+c then "Not A Triangle"
        when a=b and b=c then "Equilateral"
        when a=b or a=c or b=c then "Isosceles"
        else "Scalene"
    end
from triangles;
