require 'pry'

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
    @cost = cost.delete("$").to_f
    @payment = payment.delete("$").to_f
    @currency_change = Hash.new{}
    @change_message = []
  end

  def make_change
    remainder = @payment - @cost
    decimal = (remainder % 1).round(2)
    whole_num = remainder.to_i

    decide_bills(whole_num)
    decide_coins(decimal)

    @currency_change.reject!{|k,v| v == 0}

    set_up_change_message
    write_message(remainder.round(2))
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

  def set_up_change_message
    @currency_change.each do |denomination, value|
      if value == 1
        @change_message << "#{value} #{denomination}"
      elsif value > 1 && denomination == :penny
        @change_message << "#{value} pennies"
      else
        @change_message << "#{value} #{denomination}s"
      end
    end
    @change_message
  end

  def write_message(remainder)
    if remainder == 0
      p "No Change Due"
    else
      p "Your change is $#{sprintf("%.2f", remainder)} - You are due #{@change_message.join(" and ")}"
    end
  end
end