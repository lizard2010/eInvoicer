class CreateFactInvoices < ActiveRecord::Migration
  def change
    create_table :ei_fact_invoices do |t|
      t.references :invoice, index: true
      t.references :fact, index: true

      t.timestamps null: false
    end
    add_foreign_key :fact_invoices, :invoices
    add_foreign_key :fact_invoices, :facts
  end
end
