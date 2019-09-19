require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Bob")
co2 = CarOwner.new("Girl")
co3 = CarOwner.new("Evans")

m1 = Mechanic.new("Steves American Auto Shop", "American")
m2 = Mechanic.new("All Japanese Imports", "Japanese")
m3 = Mechanic.new("EuroTech", "Euro")

c1 = Car.new(co1, m1, "Chevy", "Camaro", "American")
c2 = Car.new(co2, m2, "Toyota", "Camry", "Japanese")
c3 = Car.new(co2, m3, "BMW", "M6", "Euro")
c4 = Car.new(co3, m3, "Audi", "RS7", "Euro")
c5 = Car.new(co3, m1, "Ford", "F150", "American")
m3.mechanic_customers
binding.pry
puts "yo"