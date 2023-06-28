require 'pry'

class Remove
  def self.remove_element(nums, val)
    length = nums.length
    nums.delete(val)
    k = length - nums.length
    k.times {nums.push(0)}
    nums
  end
end