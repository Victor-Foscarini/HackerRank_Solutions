class stat():
    def __init__(self,list=[],n=None):
        self.list = list
        if n == None:
            self.n = len(list)
        else:
            self.n = n
        self.is_sorted = False

    def mean(self):
        return sum(self.list)/n

    def median(self):
        if not self.is_sorted:
            self.list = sorted(self.list)
            self.is_sorted = True
        if n%2==0:
            return (self.list[int(n/2)-1]+self.list[int(n/2)])/2
        else:
            return self.list[int(n/2)]
        
    def mode(self):
        if not self.is_sorted:
            self.list = sorted(self.list)
            self.is_sorted = True
        _counter,mode,counter = 1,None,0
        for i in range(self.n-1):
            if self.list[i] == self.list[i+1] :
                _counter +=1
            else:
                if _counter > counter:
                    counter = _counter
                    _counter,mode = 1,self.list[i]
                else:
                    _counter = 1
        return mode

n = int(input())
list = [int(x) for x in input().split()]
stat = stat(list)
print(stat.mean())
print(stat.median())
print(stat.mode())
