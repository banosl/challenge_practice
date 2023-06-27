require 'pry'
# Let’s pretend you’re writing software for a machine that automatically produces change 
# when you pay in cash. 
# For example, if you are buying something that is $1.82 and you pay with $2.00 
# the change machine will give you back $0.18 as a dime, a nickel, and three pennies. 
# If you pay with $5, it will give you 3 ones and then a dime, a nickel, and three pennies.


# I think I will want to use a hash for this to lay out the values of the coins to reference.
# I will need a cost variable and a variable for holding what the person is paying.
#coins could be part of a class money so that I have access to them as an instance variable

class Money
  attr_reader :coins, :cost, :payment

  def initialize(cost, payment)
    @coins = {penny => .01,
              nickel => .05,
              dime => .10,
              quarter => .25}
    @cost = cost
    @payment = payment
  end

  

#for the first part I will want the method to subtract the whole number and set that aside for $
#Then i'll have it take the cents and maybe go backwards in checking the coins
#like how many .25 'fit' in the remainder?
# after that is determined, subtract that from the remainer
#then have it check for dimes, subtract those
#then check for nickels, subtract those
#finally check how many pennies fit in the last bit

  def make_change(cost, payment)
    remainder = payment - cost
    binding.pry
  end

end


#examples

cost1 = 2.18
payment1 = 5.00

transaction1 = Money.new(cost1, payment1)

# p transaction1.payment_made