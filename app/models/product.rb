class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :desription, type: String
  field :price, type: Float
  field :level, type: Integer
  belongs_to :ProductCate
end
