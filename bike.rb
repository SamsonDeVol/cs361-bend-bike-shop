# Bike

class Bike

  STANDARD_WEIGHT = 200 # lb

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, cargo)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = cargo
  end

  def rent!
    rented = true
  end

end

class Cargo

  MAX_CARGO_ITEMS = 10

  attr_accessor :cargo_contents

  def initialize(cargo_contents = [])
    @cargo_contents = cargo_contents
  end 

  def add_cargo(item)
    cargo_contents << item
  end

  def remove_cargo(item)
    cargo_contents.remove(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - cargo_contents.size
  end

end
