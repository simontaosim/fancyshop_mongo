class ProductCate
  include Mongoid::Document
   include Mongoid::Timestamps
  field :name, type: String
  field :product_cate_id, type:ProductCate
  belongs_to :ProductCate
  has_many :product_cates
  has_many :products
end
