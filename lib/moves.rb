require 'pry'

#Question One:
#Given an array of positive integers nums , you start at the first index. 
#Each element in the array represents the length you move forward by. 
#Determine the number of moves you need to exit the array. 
#You may assume that the array will never be empty.

#Example 1:
nums = [3,1,1,4,3]
#output: 2
#explanation: move1 > Index0 -> Index3
#                      move2  > Index 3 -> Exit
#Example 2:
nums2 = [1,2,5,2,1,1]
#explanation: move 1: Index 0 -> Index 1
#                      move 2: Index 1 -> Index 3
#                      move 3: Index 3 -> Index 5
#                      move 4: Index 5 -> Exit (edited)

nums3 = [5, 1, 2]
nums4 = [2, 1, 2, 3, 1, 1, 1, 1, 1, 2, 4]

def moves_needed(nums)
  ext = nums.count - 1

  index = 0
  count = 0
  
  loop do 
    index += nums[index] 
    count += 1
    if index > ext
      return count
    end
  end
end

p moves_needed(nums)
p moves_needed(nums2)
p moves_needed(nums3)
p moves_needed(nums4)