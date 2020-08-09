import statistics as st

n = int(input())
nums = list(map(int,input().split()))
nums.sort()

print(int(st.median(nums[:n//2])))
print(int(st.median(nums)))
print(int(st.median(nums[int(n/2+0.5):])))
