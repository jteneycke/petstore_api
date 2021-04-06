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

  def test_delete_pet
    id = Pet.first.id
    pre_count = Pet.all.count
    delete "/v1/pets/#{id}"
    post_count = Pet.all.count

    assert_equal (pre_count - 1), post_count
  end

  # def test_create_pet
  #   post "/v1/pets/"

  #   assert_equal id, json_response[:id]
  # end


end
