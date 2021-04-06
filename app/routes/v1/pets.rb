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

        desc 'Create a Pet.'
        params do
          requires :name, type: String, desc: 'Pet name.'
          requires :species, type: String, desc: 'Pet species.'
          requires :weight, type: String, desc: 'Pet weight.'
          requires :size, type: String, desc: 'Pet size.'
        end
        post do
          Pet.create!({
            name: params[:name],
            species: params[:species],
            weight: params[:weight],
            size: params[:size],
          })
        end

        desc 'Update a Pet.'
        params do
          requires :id, type: String, desc: 'Pet ID.'
          optional :name, type: String, desc: 'Pet name.'
          optional :species, type: String, desc: 'Pet species.'
          optional :weight, type: String, desc: 'Pet weight.'
          optional :size, type: String, desc: 'Pet size.'
        end
        put ':id' do
          Pet.find(params[:id]).update({
            name: params[:name]
          })
        end

        desc 'Delete a Pet.'
        params do
          requires :id, type: String, desc: 'Pet ID.'
        end
        delete ':id' do
          Pet.find(params[:id]).destroy
        end

      end

    end
  end
end
