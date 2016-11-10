class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.date :date_of_registration, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
