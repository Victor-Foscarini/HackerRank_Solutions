input()
nums = list(map(float,input().split()))
weights = list(map(float,input().split()))

print(round(sum([x*y for (x,y) in zip(nums,weights)])/sum(weights),1))
