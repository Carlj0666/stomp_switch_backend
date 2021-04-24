class CreatePedals < ActiveRecord::Migration[6.1]
  def change
    create_table :pedals do |t|
      t.string :name
      t.float :price
      t.string :effect
      t.belongs_to :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
