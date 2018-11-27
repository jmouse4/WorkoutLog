class Image < ApplicationRecord
  attr_accessible :log_id, :name, :image
  belongs_to :log
  mount_uploader :image, ImageUploader
end
