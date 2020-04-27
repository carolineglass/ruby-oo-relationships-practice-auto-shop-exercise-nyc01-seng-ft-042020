require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
        
# (name, specialty)
mechanic1 = Mechanic.new("Caroline", "4x4")
mechanic2 = Mechanic.new("Paul", "Sports")

# (name)
car_owner1 = CarOwner.new("Rachel")
car_owner2 = CarOwner.new("Gaby")

# (make, model, classification, car_owner) 
car1 = Car.new("Range Rover", "Evoke", "4x4", car_owner1)
car2 = Car.new("Audi", "S3", "Sports", car_owner1)
car3 = Car.new("VW", "Sirocco", "Sports", car_owner2)

car1.mechanic = mechanic1

binding.pry
