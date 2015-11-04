json.array!(@branches) do |branch|
  json.extract! branch, :id, :branch_name, :branch_city, :assets
  json.url branch_url(branch, format: :json)
end
