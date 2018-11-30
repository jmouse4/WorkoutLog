class Picture < ApplicationRecord
    attr_accessor :name, :image
    belongs_to :log
    mount_uploader :image, ImageUploader
end
