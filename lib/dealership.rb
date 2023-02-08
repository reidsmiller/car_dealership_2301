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
end