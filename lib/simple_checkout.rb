class Checkout
  def initialize
    @foods = { :cheese => 700, :tea => 250, :bacon => 300, :sausages => 600 }
  end
  def check_price(item_price) 
    @foods.each do |item, price|
      if item == :cheese
        return price
      end
    end
  end

end