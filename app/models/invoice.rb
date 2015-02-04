class Invoice < ActiveRecord::Base
  self.table_name = "ei_invoices"
  belongs_to :client
  has_many :facts, through: :fact_invoices
end
