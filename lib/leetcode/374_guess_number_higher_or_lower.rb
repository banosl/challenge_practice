require 'pry'

def guess(num)
  pick = 27;
  if (pick == num) 
    return 0
  elsif (num > pick) 
    return -1
  else 
    return 1
  end
end

def guess_number(n)
  l = 1
  r = n
  
  while r >= l
    pick = (l + r)/2
    g = guess(pick)
    if g == 0
      return pick
    elsif r - l == 1
      return r
    elsif g == -1
      r = pick
    elsif g == 1
      l = pick
    end
  end
  
end

p guess_number(85)