class Product < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :name, :desc, :price, :category
  Categories = ['shirt', 'shoe', 'shorts', 'pants', 'hat', 'socks']

  def exerpt
    return desc if desc.length < 35
    desc[0..35] + '...'
  end
end
