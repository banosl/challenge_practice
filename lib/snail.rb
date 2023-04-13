require 'pry'

class Snail
  def self.order(matrix)
    new_array = []
    until matrix == []

        new_array << matrix[0]
        matrix.delete_at(0)
        
        matrix.map do | array |
          new_array << array.last
          array.delete_at(-1)
        end

        if matrix != []
          matrix[-1].reverse_each do |num|
            new_array << num
          end
          matrix.delete_at(-1)
        end

        if matrix != []
          matrix.reverse_each do |array|
            new_array << array.first
            array.delete_at(0)
          end
        end
    end
    
    new_array.flatten
  end
end