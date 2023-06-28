require 'pry'

class TwoSum
  def self.two_sum(nums, target)
    copy = nums
    x = 0
    y = 1
    counter = 1

    loop do
      if nums[x] + nums[y] == target
       
          if nums[x] == nums[y] && x!=y
            first = copy.find_index(copy[x])
            copy.delete_at(first)
            second = copy.find_index(copy[y - 1]) + 1
            return output = [first ,second]
          elsif nums[x] == nums[y] && x==y
            first = copy.find_index(copy[x])
            copy.delete_at(first)
            second = copy.find_index(copy[y + 1])
            return output = [first ,second]
          else 
            return output = [nums.find_index(nums[x]), nums.find_index(nums[y])]
          end
      else
        y += 1
        if y >= nums.count && !nums[y].nil?
          x += 1
          counter += 1
          y = counter
        else y < nums.count && nums[y] == nums.last
          x += 1
          counter += 1
          y = counter
        end
      end
    end
  end
end