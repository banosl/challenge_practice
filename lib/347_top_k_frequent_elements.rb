require 'pry'

nums = [4,1,-1,2,-1,2,3]
k = 2

def top_k_frequent(nums, k)
  hash = {}
  
  unique = nums.sort.uniq
  unique.map do |int|
    hash[int] = nums.count(int)
  end

  hash.sort_by{|k, v| v}.reverse.to_h.keys[0..(k - 1)]
end

b = top_k_frequent(nums, k)
p b