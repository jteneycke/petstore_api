class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.string :size, null: false
      t.string :weight, null: false
      t.timestamps null: false
    end
  end
end
