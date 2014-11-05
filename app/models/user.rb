class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :username, type: String
  field :password, type: String
  field :email, type: String
  field :mobile, type: String
end
