select f1.x,f1.y from Functions f1 inner join Functions f2 on f1.x=f2.y and f1.y=f2.x group by f1.x,f1.y having f1.y>f1.x or count(f1.x)>1 order by f1.x
