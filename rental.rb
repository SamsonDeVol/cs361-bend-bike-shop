class Rental

  attr_reader :base_price, :weight, :item_weight

  def initialize(base_price, weight, item_weight)
    @base_price = base_price
    @weight = weight
    @item_weight = item_weight
    
  end

  def price
    self.base_price + ((self.weight + self.item_weight) * 2)
  end

end
