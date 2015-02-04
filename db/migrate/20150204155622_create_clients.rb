class CreateClients < ActiveRecord::Migration
  def change
    create_table :ei_clients do |t|
      t.text :name
      t.text :addr
      t.decimal :rate
      t.text :currency

      t.timestamps null: false
    end
  end
end
