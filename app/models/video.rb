class Video < ActiveRecord::Base
  Categories = ['Full Part', 'Game Of Skate', 'Bangin']
  validates_presence_of :name, :desc, :filepicker_url

  def exerpt
    return desc if desc.length < 35
    desc[0..60] + '...'
  end
end
