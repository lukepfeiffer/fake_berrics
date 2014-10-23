class CreateItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity
      t.integer :product_id
    end
  end
end
