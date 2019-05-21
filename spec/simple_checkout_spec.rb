require 'simple_checkout'

describe Checkout do
let(:checkout) { Checkout.new }

  it '#price - See price of items' do
    expect(checkout.check_price(:cheese)).to eq(700)
  end

  it '#scan_item - See which items have been scanned at checkout' do
    expect(checkout.scan([:cheese, :tea])).to eq([:cheese, :tea])
  end

  it '#total for all scanned items' do
    expect(checkout.total_price([:cheese, :tea])).to eq(950)
  end

end