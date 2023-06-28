require 'pry'

class Tree
  def self.invert_tree(root)
    base = root[0]
    root.delete_at(0)
    binding.pry
  end
end