require 'pry'
class Test
  # @param {Integer[]} nums
  # @return {Integer}

  #I would want to start at index 0 and then add 1 as I'm checkcing each index for the right thing
  #While doing that I need to check all the numbers to the left, add those up and separately all the numbers to the right, add those up
  #I could try to make like a left and a right array, sum them and compare them.
  #Until left and right are equal then it will keep going
  #If it reaches an index number that is greater than the length of the array then it will return -1

  def self.pivot_index(nums)
    index = 0
    loop do
      if index == 0
        r = 1
        left = []
      else 
        l = index - 1
        r = index + 1
        left = nums[0..l]
      end

      right = nums[r..-1]

      if index == nums.count
        return -1
      elsif left.sum == right.sum
        return index
      else
        index += 1
      end
    end
  end
  
end