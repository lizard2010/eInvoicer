class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :ei_invoices do |t|
      t.references :client, index: true
      t.integer :status
      t.datetime :sent_time
      t.datetime :payed_time

      t.timestamps null: false
    end
    add_foreign_key :invoices, :clients
  end
end
