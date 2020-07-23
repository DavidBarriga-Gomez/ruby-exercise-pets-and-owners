require 'minitest/autorun'
require 'pry'
require './lib/dog'


class DogTest < MiniTest::Test
  def setup
    @foxy = Dog.new('Foxy', :australian_cattle_dog)
  end

  def test_existence
    assert_instance_of Dog, @foxy
  end

  def test_attributes
    assert_equal 'Foxy', @foxy.name
    assert_equal :australian_cattle_dog, @foxy.breed
  end
end
