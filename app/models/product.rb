class Product < ActiveRecord::Base
  has_many :reviews
  Categories = ['shirt', 'shoe', 'shorts', 'pants', 'hat', 'socks']
end
