class Invoice < ActiveRecord::Base
  self.table_name = 'ei_invoices'
  belongs_to :client
  has_many :fact_invoices
  has_many :facts, through: :fact_invoices

  STATUSES = %w(Created Paid)

end
