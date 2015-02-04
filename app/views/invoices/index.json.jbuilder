json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :client_id, :status, :sent_time, :payed_time
  json.url invoice_url(invoice, format: :json)
end
