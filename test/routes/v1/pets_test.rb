require_relative '../../test_helper'

class ApiV1PetsTest < ApiV1TestCase
  def test_get_pets
    get '/v1/pets'
    assert_equal 2, json_response.size
  end

  def test_get_pet
    id = Pet.first.id
    get "/v1/pets/#{id}"
    assert_equal id, json_response[:id]
  end
end
