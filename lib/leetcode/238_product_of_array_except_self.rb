require 'pry'

nums = [1,2,3,4]
nums1 = [-1,1,0,-3,3]

def product_except_self(nums)
  c = 0
  multiplied = nums_multiply(nums, c)
  array = []

  nums.each do |num|
    if num == 0 && multiplied == 0
      indx = nums.index(num)
      nums[indx] = 1
      multiplied = nums_multiply(nums, c)
      array << multiplied

      nums[indx] = 0
      multiplied = nums_multiply(nums, c)
    else
      array << multiplied / num
    end
  end
  array
end

def nums_multiply(nums, c)
  if c == nums.count
    return 1
  else
    nums[c] * nums_multiply(nums, c + 1)
  end
end

a = product_except_self(nums)
b = product_except_self(nums1)

p a
p b