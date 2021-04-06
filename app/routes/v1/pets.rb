module Routes
  module V1
    class Pets < Grape::API
      resource :pets do
        get do
          present Pet.all, with: Entities::V1::Pet
        end

        desc 'Return a specific Pet'
        route_param :id do
          get do
            present Pet.find(params[:id]), with: Entities::V1::Pet
          end
        end
      end

    end
  end
end
