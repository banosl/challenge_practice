require 'pry'
class Number
  def self.missing_number(nums)
    n = nums.count
    range = (0..n)

    a = range.to_a - nums
    a.first
  end
end