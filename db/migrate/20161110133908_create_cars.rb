class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.text :brand, null: false
      t.references :client, foreign_key: true, null: false
      t.text :model, null: false
      t.text :contents, null: false
      t.text :vin, null: false, limit: 20
      t.integer :color, null: false
      t.references :contract, foreign_key: true, null: false

      t.timestamps
    end
  end
end
