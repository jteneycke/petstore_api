module Routes
  module V1
    class Pets < Grape::API
      desc "Get a list of Pets"
      get :pets do
        present Pet.all, with: Entities::V1::Pet
      end
    end
  end
end
