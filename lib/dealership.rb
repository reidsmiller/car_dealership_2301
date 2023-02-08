class Dealership
  attr_accessor :name, :location, :inventory
  def initialize (name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    inventory.length
  end

  def add_car(car)
    self.inventory << car
  end

  def has_inventory?
    if inventory.length == 0
      false
    else
      true
    end
  end

  def cars_by_make(string)
    inventory.select {|car| car.make == (string)}
  end

  def total_value
    inventory.reduce(0) do |total, car|
      total + car.total_cost
    end
  end

  def details
    details = {
      "total_value" => self.total_value,
      "address" => self.location
    }
  end

  def average_price_of_car
    ave = self.total_value / inventory.count
    ave.to_s.reverse.insert(3, ",").reverse
  end

  def cars_sorted_by_price
    inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    inventory_hash = Hash.new {|hash, key| hash[key] = []}
    inventory.each do |car|
      inventory_hash[car.make] << car
    end
    inventory_hash
  end
end