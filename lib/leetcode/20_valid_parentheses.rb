require 'pry'

def is_valid(s)
  hash = {
    "("=>")",
    "["=>"]",
    "{"=>"}"
  }

  a = s.split("")
  x = a.count/2
  i = a.index(hash[a.first])
# binding.pry
  x.times do
    binding.pry
    if i.nil?
      return false
    elsif (i-1).odd?
      return false
    elsif a.index(a.first) > i
      return false
    else
      a.delete(hash[a.first])
      a.delete(a.first)
    end
  end
    
  if a == []
    return true
  else
    return false
  end
end

s1 = "()"
s2 = "()[]{}"
s3 = "(]"
s4 = "{[]}"
s5 = "([)]"
s6 = "([]{)}"
s7 = "(){}}{"

# p is_valid(s1)
# p is_valid(s2)
# p is_valid(s3)
# p is_valid(s4)
# p is_valid(s5)
# p is_valid(s6)
p is_valid(s7)