require 'simple_checkout'

describe Checkout do
let(:checkout) { Checkout.new }

  it '#price - See price of items' do
    expect(checkout.check_price('cheese', 700)).to eq(700)
  end

  it '#scan_item - See which items have been scanned at checkout' do
    expect(checkout.scan(:cheese)).to eq([:cheese, 700])
  end


  # it '#scan_item - See which items have been scanned at checkout' do
  #   expect(checkout.scan(:cheese)).to eq([:cheese, 700])
  # end

  # it '#total for all scanned items' do
  #   expect(checkout.total_price).to eq(700)
  # end

end