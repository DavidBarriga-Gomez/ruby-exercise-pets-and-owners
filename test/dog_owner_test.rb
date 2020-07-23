require 'minitest/autorun'
require 'pry'
require './lib/dog_owner'
require './lib/dog'

class DogOwnerTest < MiniTest::Test
  def setup
    @foxy = Dog.new('Foxy', :australian_cattle_dog)
    @krypto = Dog.new('Krypto', :pitbull)
    @bear = Dog.new('Bear', :australian_cattle_dog)
    @mr_jingles = Dog.new('Mr.Jingles', :chowchow)
    @david = DogOwner.new('David')
  end

  def test_existence
    assert_instance_of DogOwner, @david
  end

  def test_attributes
    assert_equal 'David', @david.name
  end

  def test_method_dog_family
    assert_equal [], @david.dog_family
  end

  def test_method_add_dog
    @david.add_dog(@foxy)
    @david.add_dog(@krypto)
    assert_equal [@foxy, @krypto], @david.dog_family
    assert_equal 2, @david.dog_family.length
  end

  def test_method_get_all_dogs_by_breed
    @david.add_dog(@foxy)
    @david.add_dog(@krypto)
    @david.add_dog(@mr_jingles)
    @david.add_dog(@bear)
    assert_equal [@foxy, @bear], @david.get_all_dogs_by_breed(:australian_cattle_dog)
  end

  def test_method_sort_dogs
    hash = {:australian_cattle_dog=>['Bear', 'Foxy'], :chowchow=>['Mr.Jingles'], :pitbull=>['Krypto']}
    @david.add_dog(@foxy)
    @david.add_dog(@krypto)
    @david.add_dog(@mr_jingles)
    @david.add_dog(@bear)
    assert_equal hash, @david.sort_dogs
  end
end
