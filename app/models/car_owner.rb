require 'pry'

class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def my_cars
    Car.all.select {|car| car.car_owner == self}
  end
  #look at all the owners cars. select cars that belong to me

  def mechanics
    my_cars.map {|car| car.mechanic}
  end 

  def self.average_cars
    total_cars = Car.all.map {|owner| owner.make}.length
    total_owners = self.all.map {|car| car.name}.length 
    total_cars/(total_owners*1.0)
  end
  #total of ALL cars. 

  def self.all
    @@all 
  end 

end
