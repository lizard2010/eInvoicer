class FactInvoice < ActiveRecord::Base
  self.table_name = 'ei_fact_invoices'
  belongs_to :invoice
  belongs_to :fact
end
