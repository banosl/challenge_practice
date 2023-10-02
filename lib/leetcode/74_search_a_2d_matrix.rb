require 'pry'

#this solution has O(m) time complexity because of the #find method
# def search_matrix(matrix, target)
#   check = false

#   matrix.find do |arr|
#     if arr.include?(target)
#       check = true
#     end
#   end

#   check 
# end

#binary search attempt
def search_matrix(matrix, target)
  check = false
  r = matrix.count/2
  right = matrix[r..-1]
  left = matrix[0..r]
  binding.pry
  # i = matrix[r].count/2
  if target < matrix[r][0]
    r /= 2
    binding.pry
  elsif target > matrix[r][-1]

  else
    matrix = matrix[r]
  end
  binding.pry
  check
end


p search_matrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3) #true