require 'pry'


#step 1 make a has with the array where the key is the number
#and the value is an array of all that number's indeces in the original array

def contains_nearby_duplicate(nums, k)
  dict = Hash.new([])
  i = 0
  n = 0
 
  if k == 0
    return false
  end
  
  while i < nums.length
    dict[nums[i]] = []
    i += 1
  end

  while n < nums.length
    dict[nums[n]].push(n)
    n += 1
  end

  dict.reject!{|k, v| v.count < 2}
  
  dict.each do |key, value|
    if value.count == 2
      if value[-1] - value[0] <= k
        return true
      end
    elsif value.count >= 3
      value.each do |v|
        if value.include?((v - k).abs)
          return true
        end
      end
    end
  end

  return false
end

nums1 = [1, 2, 3, 1]
k1 = 3

nums2 = [1, 0, 1, 1]
k2 = 1

nums3 = [1, 2, 3, 1, 2, 3]
k3 = 2

p contains_nearby_duplicate(nums1, k1)
p contains_nearby_duplicate(nums2, k2)
p contains_nearby_duplicate(nums3, k3)
p contains_nearby_duplicate([1,2,3,1,1,2,3], 0)
p contains_nearby_duplicate([99, 99], 2)