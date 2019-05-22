class Checkout

  attr_reader :scanned_items, :total
  def initialize
    @foods = { :cheese => 700, :tea => 250, :bacon => 300, :sausages => 600 }
    @scanned_items = []
    @total = 0
  end

  def check_price(check_item_price) 
    return @foods[check_item_price]
  end

  def scan(scanned_item)
    scanned_item.each { |item|
      @scanned_items.push(item)
    }
  end

  def total_price
    @scanned_items.each { |item|
      @total += check_price(item).to_i
    }
    return total
  end

end