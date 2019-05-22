require 'simple_checkout'

describe Checkout do

  it '#price - See price of items' do
    expect(subject.check_price(:cheese)).to eq(700)
  end

  it '#scan_item - See which items have been scanned at checkout' do
    expect(subject.scan([:cheese, :tea])).to eq([:cheese, :tea])
  end

  it '#total for 2 scanned items' do
    subject.scan([:cheese, :tea])
    expect(subject.total_price).to eq(950)
  end

  it '#total for all scanned items' do
    subject.scan([:cheese, :tea, :bacon, :sausages])
    expect(subject.total_price).to eq(1850)
  end

end