require 'pry'

def maximum_product(nums)
  nums.sort!

  last = [nums[-1], nums[-2], nums[-3]].inject(:*)

  if nums.all?{|num| num < 0}
    [nums[-1], nums[-2], nums[-3]].inject(:*)
  elsif nums[0] < 0 && nums[1] < 0
   first = [nums[0], nums[1], nums[-1]].inject(:*)
   last > first ? last : first
  else
    [nums[-1], nums[-2], nums[-3]].inject(:*)
  end
end



p maximum_product([1,2,3])
p maximum_product([1,2,3,4])
p maximum_product([-1,-2,-3])
p maximum_product([-100,-98,-1,2,3,4])
p maximum_product([-100,-2,-3,1])
p maximum_product([-1,-2,-3,-4])