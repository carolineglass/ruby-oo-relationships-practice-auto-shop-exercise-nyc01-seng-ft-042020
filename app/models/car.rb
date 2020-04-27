class Car

  attr_reader :make, :model, :classification
  attr_accessor :mechanic, :car_owner
  @@all = []
  def initialize(make, model, classification, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    Car.all << self
  end
  def self.all 
    @@all 
  end 
  def self.classifications
    list_of_class = @@all.map {|cars| cars.classification}
    list_of_class.uniq
  end
  def self.find_mechanics(classification)
    array_of_mechanics = Mechanic.all.select {|mechanics| mechanics.specialty == classification}
    #Returns a list of ##<Mechanic:0x00007fd73aa5a730 @name="Paul", @specialty="Sports">]
  end

end

# **Car**

#   - (`Car.all` Get a list of all cars)

#   - (`Car.classifications` Get a list of all car classifications)

#   - (`Car.find_mechanics(classification)` Get a list of mechanics that have an 
#      expertise that matches the passed in car classification)