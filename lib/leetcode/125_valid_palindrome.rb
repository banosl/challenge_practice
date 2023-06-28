require 'pry'

def is_palindrome(s)
  s.delete!(" ")
  s.downcase!
  s.delete!('^a-z0-9')
  s == s.reverse
end

s1 = "A man, a plan, a canal: Panama"
s2 = "race a car"
s3 = " "
s4 = "9,5,9"

p is_palindrome(s1)
p is_palindrome(s2)
p is_palindrome(s3)
p is_palindrome(s4)

def two_point_palindrome(s)
  s.delete!(" ")
  s.downcase!
  s.delete!('^a-z0-9')

  l = 0
  r = s.length - 1

  while r > l || r == l
    if s[l] == s[r]
      l += 1
      r -= 1
    else
      return false
    end
  end
  true
end

p two_point_palindrome(s1) #true
p two_point_palindrome(s2) #false
p two_point_palindrome(s3) #true
p two_point_palindrome(s4) #true