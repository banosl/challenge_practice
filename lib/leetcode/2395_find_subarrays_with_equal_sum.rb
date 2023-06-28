require 'pry'

class Subarray
  def self.find_subarrays(nums)
    first = 0
    second = 1
    length = nums.length - 1
    sum = []
  
    length.times do
      sum << nums[first] + nums[second]
      first += 1
      second += 1
    end
      binding.pry
    l = sum.length
    sum.uniq!
    binding.pry
    if l > sum.length
      return true
    else
      return false
    end
  end
end