require 'pry'

def maximum_wealth(accounts)
  accounts.map do |account|
    account.sum
  end.max
end

p maximum_wealth([[1,2,3],[3,2,1]]) #6
p maximum_wealth([[1,5],[7,3],[3,5]]) #10
p maximum_wealth([[2,8,7],[7,1,3],[1,9,5]]) #17