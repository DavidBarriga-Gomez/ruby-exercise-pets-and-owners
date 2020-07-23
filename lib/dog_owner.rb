class DogOwner
  attr_reader :name, :dog_family
  def initialize(name)
    @name = name
    @dog_family = []
  end

  def add_dog(dog)
    @dog_family.push dog
  end

  def get_all_dogs_by_breed(breed)
    dogs_by_breed = []
    @dog_family.each do |dog|
      if dog.breed == breed
        dogs_by_breed.push dog
      end
    end
    dogs_by_breed
  end

  def sort_dogs
    sorted_dogs = {}
    @dog_family.each do |dog|
      if sorted_dogs.keys.include? dog.breed
        sorted_dogs[dog.breed].push dog.name
        sorted_dogs[dog.breed] = sorted_dogs[dog.breed].sort
      else
      sorted_dogs[dog.breed] = [dog.name]
      end
    end
    sorted_dogs.sort.to_h
  end
end
