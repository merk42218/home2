class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.text :last_name, null: false
      t.text :first_name, null: false
      t.text :second_name, null: false
      t.text :telephone, null: false, limit: 16
      t.text :passport_number, null: false, limit: 16

      t.timestamps
    end
  end
end
