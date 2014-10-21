class AddFilepickerToProducts < ActiveRecord::Migration
  def change
    add_column :products, :filepicker_url, :string
  end
end
