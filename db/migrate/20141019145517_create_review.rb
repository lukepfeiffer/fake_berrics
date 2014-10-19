class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :rating
      t.integer :product_id
      t.integer :user_id
      t.timestamps
    end
  end
end
