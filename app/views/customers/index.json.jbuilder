json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_name, :customer_street, :customer_city
  json.url customer_url(customer, format: :json)
end
