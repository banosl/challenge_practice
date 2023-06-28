require 'pry'
# Let’s pretend you’re writing software for a machine that automatically produces change 
# when you pay in cash. 
# For example, if you are buying something that is $1.82 and you pay with $2.00 
# the change machine will give you back $0.18 as a dime, a nickel, and three pennies. 
# If you pay with $5, it will give you 3 ones and then a dime, a nickel, and three pennies.


# I think I will want to use a hash for this to lay out the values of the coins to reference.
# I will need a cost variable and a variable for holding what the person is paying.
#coins could be part of a class money so that I have access to them as an instance variable

#for the first part I will want the method to subtract the whole number and set that aside for $
#Then i'll have it take the cents and maybe go backwards in checking the coins
#like how many .25 'fit' in the remainder?
# after that is determined, subtract that from the remainer
#then have it check for dimes, subtract those
#then check for nickels, subtract those
#finally check how many pennies fit in the last bit

class Money
  attr_reader :coins, :cost, :payment

  def initialize(cost, payment)
    @coins = {penny:  0.01,
              nickel:  0.05,
              dime:  0.10,
              quarter:  0.25}
    @bills = {one:  1,
              five:  5,
              ten:  10,
              twenty:  20,
              fifty:  50,
              hundred:  100}
    @cost = cost
    @payment = payment
    @currency_change = Hash.new{}
  end

  def make_change
    remainder = @payment - @cost
    decimal = (remainder % 1).round(2)
    whole_num = remainder.to_i

    decide_bills(whole_num)
    decide_coins(decimal)

    @currency_change.reject!{|k,v| v == 0}
  end

  def decide_coins(decimal)
    @coins.reverse_each do |coin, value|
      times_divisible = ((decimal.round(2))/value).to_i
      @currency_change[coin] = times_divisible
      decimal -= (value * times_divisible)
    end
  end

  def decide_bills(whole_num)
    @bills.reverse_each do |bill, value|
      times_divisible = whole_num/value
      @currency_change[bill] = times_divisible
      whole_num -= (value * times_divisible)
    end
  end

end


#examples

cost1 = 2.18
payment1 = 5.00

transaction1 = Money.new(cost1, payment1)

p "Cost: #{transaction1.cost}"
p "Payment: #{transaction1.payment}"
p "Return: #{transaction1.make_change}"
p ""
transaction2 = Money.new(132.26, 150)
p transaction2.make_change
p "Cost: #{transaction2.cost}"
p "Payment: #{transaction2.payment}"
p "Return: #{transaction2.make_change}"