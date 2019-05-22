class Checkout

  attr_reader :scanned_items, :total
  def initialize
    @foods = { :cheese => 0.70, :tea => 0.25, :bacon => 0.30, :sausages => 0.60 }
    @scanned_items = []
    @total = 0
  end

  def check_price(check_item_price) 
    final = @foods[check_item_price]
    return "£#{('%.2f' % (final))}"
  end

  def check_price_2(check_item_price) 
    return @foods[check_item_price]
  end

  def scan(scanned_item)
    scanned_item.each { |item|
      @scanned_items.push(item)
    }
  end

  def total_price
    @scanned_items.each { |item|
      @total += check_price_2(item)
    }
    return "£#{(@total)}"
  end

end