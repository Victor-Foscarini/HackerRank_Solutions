N,Q = map(int,input().split())
lastAnswer = 0
seqList = [[] for y in range(N)]

for i in range(Q):
    q,x,y = map(int,input().strip().split())
    seq = (x ^ lastAnswer)%N
    
    if (q ==1):
        seqList[seq].append(y)
        
    elif (q==2):
        lastAnswer = seqList[seq][y%len(seqList[seq])]
        print(lastAnswer)
