n,d = [int(x) for x in input().split()]

array = [x for x in input().split()]

for value in (array[d:] + array[:d]):
    print(value, end = " ")
