require 'simple_checkout'

describe Checkout do
let(:checkout) { Checkout.new }

  it '#price - See price of items' do
    expect(checkout.check_price(:cheese)).to eq(700)
  end

  it '#scan_item - See which items have been scanned at checkout' do
    
  end

end


# As a shopper
# So that I can buy an item
# I would like to be able to scan items at the checkout