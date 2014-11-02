class User < ActiveRecord::Base
  include Authem::User
  has_one :cart
  has_many :reviews
  validates_presence_of :email, :password_digest

  def cart
    super || create_cart
  end
end
