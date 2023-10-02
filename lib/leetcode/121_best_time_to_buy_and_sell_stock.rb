require 'pry'

def max_profit(prices)
  i = 0
  diff = 0

  until i == (prices.length - 1)
    b = i + 1

    profit = (prices[b..-1].max - prices[i])

    if profit > diff
      diff = profit
    end
    i += 1
  end

  diff
end

p max_profit([7,1,5,3,6,4]) #5
p max_profit([7,6,4,3,1])
p max_profit([2,4,1]) #2
p max_profit([1]) #0