require 'pry'

class Millions
  def self.find_matches(nums_1, nums_2, nums_3)
  hold = []
  nums_1.each do |num|
    if nums_2.include?(num) && nums_3.include?(num)
      hold << num
    end
  end
  hold
end
