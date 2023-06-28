require './lib/money.rb'

RSpec.describe Money do
  it 'can calculate when only cents are due' do
    total_due   = '$1.82'
    amount_paid = '$2.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $0.18 - You are due 1 dime and 1 nickel and 3 pennies'
    
    expect(calculator.make_change).to eq(expected)
    
    total_due   = '$0.73'
    amount_paid = '$1.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $0.27 - You are due 1 quarter and 2 pennies'
    
    expect(calculator.make_change).to eq(expected)
  end

  it 'can calculate when only dollars are due' do
    total_due   = '$2.00'
    amount_paid = '$10.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $8.00 - You are due 1 five and 3 ones'
    
    expect(calculator.make_change).to eq(expected)
    
    total_due   = '$5.00'
    amount_paid = '$20.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $15.00 - You are due 1 ten and 1 five'
    
    expect(calculator.make_change).to eq(expected)
    
    total_due   = '$4.00'
    amount_paid = '$5.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $1.00 - You are due 1 one'
    
    expect(calculator.make_change).to eq(expected)
  end

  it 'can calculate when no change is due' do
    total_due   = '$2.00'
    amount_paid = '$2.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'No Change Due'
    
    expect(calculator.make_change).to eq(expected)
  end

  it 'can calculate when dollars and cents are due' do
    total_due   = '$2568.75'
    amount_paid = '$3000.25'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $431.50 - You are due 4 hundreds and 1 twenty and 1 ten and 1 one and 2 quarters'
    
    expect(calculator.make_change).to eq(expected)
    
    total_due   = '$8.50'
    amount_paid = '$20.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $11.50 - You are due 1 ten and 1 one and 2 quarters'
    
    expect(calculator.make_change).to eq(expected)
    
    total_due   = '$28.73'
    amount_paid = '$30.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $1.27 - You are due 1 one and 1 quarter and 2 pennies'
    
    expect(calculator.make_change).to eq(expected)
  end

  it 'can calculate penny versus pennies' do
    total_due   = '$1.99'
    amount_paid = '$2.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $0.01 - You are due 1 penny'
    
    expect(calculator.make_change).to eq(expected)

    total_due   = '$1.98'
    amount_paid = '$2.00'
    calculator  = Money.new(total_due, amount_paid)
    expected    = 'Your change is $0.02 - You are due 2 pennies'
    
    expect(calculator.make_change).to eq(expected)
  end    
end