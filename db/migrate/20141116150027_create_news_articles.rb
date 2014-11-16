class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :title
      t.text :content
      t.string :filepicker_url
      t.timestamp
    end
  end
end
