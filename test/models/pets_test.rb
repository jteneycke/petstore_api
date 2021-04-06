require_relative '../test_helper'

class PetsTest < TestCase
  def test_update
    pet = pets(:a)
    pet.name = 'Pet B'
    assert pet.save
  end
end