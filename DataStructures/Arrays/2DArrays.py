num = [[int(x) for x in input().split()] for z in range(6)]

somas = []
for i in range(4):
    for j in range(4):
        somas.append( num[i][j] + num[i][j+1] + num[i][j+2] + num[i+1][j+1] + num[i+2][j] + num[i+2][j+1] + num[i+2][j+2] )
            
print(max(somas))
