class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  delegate :name, :desc, :price, :filepicker_url, to: :product

  def quantity
    super || 0
  end

end
