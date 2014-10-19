class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :price
      t.string :category
    end
  end
end
