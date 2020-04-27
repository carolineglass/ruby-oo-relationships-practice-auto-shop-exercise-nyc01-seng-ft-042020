class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    CarOwner.all << self
  end
  def self.all 
    @@all 
  end
  def cars 
    Car.all.select {|cars| cars.car_owner == self}
    #cars returns all of the cars that an instance of car owner has
#     => [#<Car:0x00007fb7b9905b50
#   @car_owner=#<CarOwner:0x00007fb7b99062f8 @name="Rachel">,
#   @classification="4x4",
#   @make="Range Rover",
#   @mechanic=nil,
#   @model="Evoke">,
#  #<Car:0x00007fb7b99057b8
#   @car_owner=#<CarOwner:0x00007fb7b99062f8 @name="Rachel">,
#   @classification="Sports",
#   @make="Audi",
#   @mechanic=nil,
#   @model="S3">]
  end 
  def mechanics
    cars.map {|car_owner_cars| car_owner_cars.mechanic}
    # returns => [nil, nil] UNTIL the mechanic is set to the specific car??
  end
  def self.average_number_of_cars
    avg = Car.all.count / CarOwner.all.count
    avg 
    # `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners
  end
end


# **CarOwner**

#   - (`CarOwner.all` Get a list of all owners)

#   - (`CarOwner#cars` Get a list of all the cars that a specific owner has)

#   - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to

#    `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners