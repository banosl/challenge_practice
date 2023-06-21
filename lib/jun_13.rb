require 'pry'

=begin
Problem:

create an array of integers
where there are integers that repeat some of them
go through and count the triplets
  
=end

array = [1, 2, 3, 3, 3, 4, 4]
output = 1
array2 = [1, 1, 1, 2, 2, 2, 4, 5, 6, 6, 6, 7, 7]


def number_of_triplets(array)
  triplets = 0

  array.uniq.each do |num|
    if array.count(num) == 3
      triplets += 1
    end
  end

  triplets
end

p number_of_triplets(array)
p number_of_triplets(array2)