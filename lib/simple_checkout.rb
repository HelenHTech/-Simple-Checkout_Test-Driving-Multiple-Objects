class Checkout

  def initialize
    @item = 'cheese'
    @price = 700   
  end

  def check_price(item, price)
    return price
  end


end

  # attr_reader :scanned_items, :total
  # def initialize
  #   @foods = { :cheese => 700, :tea => 250, :bacon => 300, :sausages => 600 }
  #   @scanned_items = []
  #   @total = 0
  # end
  # def check_price(check_item_price) 
  #   @foods.each { |item, price|
  #     if item == check_item_price
  #       return price
  #     end }
  # end
  # def scan(scanned_item)
  #     @foods.map { |hash| hash.select { |item, price|
  #   if item == scanned_item
  #     @scanned_items.push(item, price.to_i)
  #   end } }
  #   return @scanned_items
  # end