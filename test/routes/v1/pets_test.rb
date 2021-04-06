require_relative '../../test_helper'

class ApiV1PetsTest < ApiV1TestCase
  def test_get_pets
    get '/v1/pets'
    assert_equal 1, json_response.size
  end
end
