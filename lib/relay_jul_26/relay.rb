require 'pry'

# Create a method that determines the missing number from the following:
# [2, 1, 5, 4, 6, 9, 7, 8, 10], return the missing num
def missing_num(collection=[])
  collection.sort.each_with_index do |num, i|
    if num != i + 1
     return i + 1
    end
  end
end

list = [2, 1, 5, 4, 6, 9, 7, 8, 10]
missing_num(list)

#Create a method that uses the missing number as an argument, 
#then returns the number as a string
#like 1 => one

def missing_num_as_string(missing_num, numbers)
 numbers[missing_num]
end

numbers = {
  1 => 'One',
  2 => 'Two',
  3 => 'Three',
  4 => 'Four',
  5 => 'Five',
  6 => 'Six',
  7 => 'Seven',0
  8 => 'Eight',
  9 => 'Nine',
  10 => 'Ten'
}

missing_num = missing_num(list)
puts missing_num_as_string(missing_num, numbers)