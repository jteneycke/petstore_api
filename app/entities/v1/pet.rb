module Entities
  module V1
    class Pet < Grape::Entity
      expose :id, documentation: {type: 'integer'}
      expose :name, documentation: {type: 'string', desc: "Pet name"}
      expose :species, documentation: {type: 'string', desc: "Species name"}
      expose :weight, documentation: {type: 'string', desc: "Weight"}
      expose :size, documentation: {type: 'string', desc: "Size"}
    end
  end
end