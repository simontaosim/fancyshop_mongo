json.array!(@products) do |product|
  json.extract! product, :id, :name, :desription, :price, :level
  json.url product_url(product, format: :json)
end
