require 'pry'

class Palin
  def self.first_25
    box = []
    num = 0
    until box.count == 25
      
      rev = num.to_s.reverse.to_i

      sum = num + rev
      sum_rev = sum.to_s.reverse.to_i

      if sum == sum_rev && sum > 1000
        box << num
      end

      num += 1
    end

    box
  end
end