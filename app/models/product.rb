class Product < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :name, :desc, :price, :category
  Categories = ['shirt', 'shoe', 'shorts', 'pants', 'hat', 'socks']
end
