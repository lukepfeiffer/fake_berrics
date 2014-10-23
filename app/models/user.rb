class User < ActiveRecord::Base
  include Authem::User
  has_one :cart
  has_many :reviews

  def cart
    super || create_cart
  end
end
