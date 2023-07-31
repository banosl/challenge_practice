require 'pry'

def three_sum(nums)
  first = 0
  second = first + 1
  result = []

  until first > (nums.count -2)
    x = nums[first] + nums[second]
    third = 0 - x
    binding.pry
    if (nums.slice(second + 1, nums.count - (second + 1))).include?(third)
      binding.pry
      result << [first, second, third]
    else
      second += 1
    end
  end
end

ex1 = [-1, 0, 1, 2, -1, -4] #[[-1, -1, 2],[-1, 0, -1]]
ex2 = [0, 1, 1] #[]
ex3 = [0, 0, 0] #[0, 0, 0]

p three_sum(ex1)
# p three_sum(ex2)
# p three_sum(ex3)
