require 'pry'
# Question Two:
# Given an array of positive integers nums , you start at the first index. 
# Each element in the array represents the maximum length you can move forward by 
# (e.g. if current element is 3, you can move forward by either 1,2, or 3). 
# Determine the maximum number of moves you need to exit the array. 
# You may assume that the array will never be empty.

# Example 1:
nums1 = [1,2,5,2,1,1]
# output: 3
# explanation: move 1: Index 0 -> Index 1
#                       move2: Index 1-> Index 2
#                       move 3: Index 2 -> Exit
# Example 2:
nums2 = [4,2,1,5,1,2]
# output : 2
# Explain: move 1: Index 0 -> Index 3
#               move 2: Index 3 -> Exit

def moves_needed(nums)
  ext = nums.count - 1

  index = 0
  count = 0

  #i could take the sum of all the possible routes for the next step and choose which ever is bigger

  loop do
    array = (1..nums[index]).to_a
    hash = {}

    array.each do |e|
      hash[e] = nums[index + e]
    end

    if hash.any?{|k, v| v == nil}
      count += 1
      return count
    else 
      hash = hash.sort_by{|key, value| -value}.to_h
      index += hash.keys.first
      count += 1
    end

    if index > ext
      return count
    end
  end
end

nums3 = [5, 1, 2]
nums4 = [2, 1, 2, 3, 1, 1, 1, 1, 1, 2, 4]
nums5 = [3, 5, 1, 1, 8, 1, 1, 1, 1, 1, 2, 5, 1]

p moves_needed(nums1)
p moves_needed(nums2)
p moves_needed(nums3)
p moves_needed(nums4)
p moves_needed(nums5)