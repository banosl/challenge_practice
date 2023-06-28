class MinStack
  def initialize()
    @stack = []
    @min = []  
  end


=begin
  :type val: Integer
  :rtype: Void
=end
  def push(val)
    @stack.push(val)

    if @min.empty?
      @min.push(val)
    elsif
      @min.last > val || @min.last == val
      @min.push(val)
    end

  end


=begin
  :rtype: Void
=end
  def pop()
    if @stack.last == @min.last
      @min.pop
    end
    @stack.pop
  end


=begin
  :rtype: Integer
=end
  def top()
    @stack.last
  end


=begin
  :rtype: Integer
=end
  def get_min()
    @min.last
  end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()