n,m = [int(x) for x in input().split()]
array = (n+1)*[0]
for i in range(m):
    a,b,k = [int(x) for x in input().split()]
    array[a-1]+=k
    array[b]-=k 
    
max = 0
_max = 0
for x in array:
    _max += x 
    if _max>max:
        max = _max
print(max)
