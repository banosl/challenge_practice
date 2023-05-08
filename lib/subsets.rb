require 'pry'

class Sub
  def self.subset(i)
    box = []
    i.each do |num|
      lc = i.index(i.last) - i.index(num)
      x = i.index(num) + 1
      lc.times do
        box << [num, i[x]]
        x += 1
      end
    end
    box
  end
end