nums = [3,1,1,4,3]

print(nums)

def moves_needed(nums):
    ex = len(nums) - 1
    
    indx = 0
    count = 0

    # for num in nums:
    #     indx += nums[indx]
    #     count += 1
    #   if indx > ex:
    #     print(count)
    #     break

moves_needed(nums)