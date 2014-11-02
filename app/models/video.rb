class Video < ActiveRecord::Base
  Categories = ['full part', 'game of skate', 'bangin']
  validates_presence_of :name, :desc, :filepicker_url
end
