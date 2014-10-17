class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :desc
      t.string :filepicker_url
      t.timestamps
    end
  end
end
