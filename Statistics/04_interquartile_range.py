import statistics as st

input()
nums = [float(x) for x in input().split()]
freq = [int(x) for x in input().split()]

list = [x for x,y in zip(nums,freq) for _ in range(y)]
list.sort()

print(st.median(list[int(len(list)/2+0.5):]) - st.median(list[:len(list)//2]))
