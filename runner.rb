require 'pry'
require './lib/724_pivot_index.rb'
require './lib/missing_number.rb'
require './lib/2315_count_asterisks.rb'
require './lib/225_invert_binary_tree.rb'
require './lib/1_two_sum.rb'
require './lib/27_remove_element.rb'
require './lib/2395_find_subarrays_with_equal_sum.rb'

# Pivot Index

# nums = [1,7,3,6,5,6]
# nums = [-1,-1,-1,1,1,1]
# # nums = [2,1,-1]
# sample = Test.pivot_index(nums)

# Missing Number
# nums = [3,0,1]
# x = Number.missing_number(nums)

# binding.pry

# s = "l|*e*et|c**o|*de|"

# p = Asterisks.count_asterisks(s)

# binding.pry

#tree

# root = [4,2,7,1,3,6,9]

# a = Tree.invert_tree(root)

# binding.pry

#two_sum


# nums = [3,2,3]
# target = 6

# a = TwoSum.two_sum(nums, target)
# binding.pry

# nums = [0,1,2,2,3,0,4,2]
# val = 2

# a = Remove.remove_element(nums, val)
# binding.pry

#subarray

nums = [1,2,3,4,5]

b = Subarray.find_subarrays(nums)
binding.pry