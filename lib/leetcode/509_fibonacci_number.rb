require 'pry'

# F(0) = 0, F(1) = 1
# F(n) = F(n - 1) + F(n - 2), for n > 1.
# n is always greater than 1

def fib(n)
  sequence = []
  i = 0

  if n > 1
    while i < n
      if i > 1
        sequence << (sequence[-1] + sequence[-2])
      else
        sequence << i
      end
      i += 1
    end
    sequence[-1] + sequence[-2]
  else
    n
  end
end

p fib(0) #0
p fib(1) #1
p fib(2) #1
p fib(3) #2
p fib(4) #3
p fib(5) #5
p fib(6) #8
p fib(7) #13
p fib(8) #21
p fib(9) #34
p fib(10) #55