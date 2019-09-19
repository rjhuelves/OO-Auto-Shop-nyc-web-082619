class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self 
  end

  def serviced_cars
    Car.all.select {|car| car.mechanic == self }
  end 
  #Get a list of all cars that a mechanic services

  def mechanic_customers 
    my_car_instances = Car.all.select do |car| 
      car.mechanic == self
      end
      my_car_instances.map {|owner| owner.car_owner}
  end 
  #Get a list of all the car owners that go to a specific mechanic

  def customer_name
    mechanic_customers.map{|owner|owner.name}
  end 
  #Get a list of the names of all car owners who go to a specific mechanic

  def self.all
    @@all
  end 

end
