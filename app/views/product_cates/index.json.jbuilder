json.array!(@product_cates) do |product_cate|
  json.extract! product_cate, :id, :name, :product_cate_id
  json.url product_cate_url(product_cate, format: :json)
end
