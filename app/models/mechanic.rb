class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self
  end
  def self.all 
    @@all 
  end
  def cars
    Car.all.select {|cars| cars.classification == self.specialty}
  end
  def car_owners 
    cars.map {|cars| cars.car_owner}
    # Get a list of all the car owners that go to a specific mechanic
  end
  def car_owner_names 
    car_owners.map {|car_owners| car_owners.name}
  end 
end

# **Mechanic**

#   - (`Mechanic.all` Get a list of all mechanics)

#   - (`Mechanic#cars` Get a list of all cars that a mechanic services)

#   - (`Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic)

#   - (`Mechanic#car_owners_names` Get a list of the names of all 
#      car owners who go to a specific mechanic)