string = []
querie = []
n = int(input())
for i in range(n):
    string.append(input())
    
n = int(input())
for i in range(n):
    querie.append(input())
    
for q in querie:
    print(string.count(q))
