require 'pry'
class Number
  def self.missing_number(nums)
    # n = nums.count
    range = (0..nums.count)
binding.pry
    a = range.to_a - nums
    a.first
  end
end