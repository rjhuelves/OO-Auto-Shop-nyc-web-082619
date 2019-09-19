class Car

  attr_reader :car_owner, :mechanic, :make, :model, :classification 

  @@all = []

  def initialize(car_owner, mechanic, make, model, classification)
    @car_owner = car_owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification

    @@all << self 
  end

  def self.classification 
    self.all.map {|car| car.classification}.uniq
  end 
  #Get a list of all car classifications

  def expertise
    Mechanic.all {||}
  end 
  #Get a list of mechanics that have an expertise that matches the car classification

  def self.all
    @@all
  end 


end #end of Car class
