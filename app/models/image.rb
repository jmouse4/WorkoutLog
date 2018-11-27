class Image < ApplicationRecord
  attr_accessor :log_id, :name, :image
  belongs_to :log
  mount_uploader :image, ImageUploader
end
