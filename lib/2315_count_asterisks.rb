require 'pry'

class Asterisks
  def self.count_asterisks(s)
    split = s.split('|')
    even = []
    split.each_index do |y|
      if y.even?
        even << split[y]
      end
    end
    even.join.count("*")
  end
end