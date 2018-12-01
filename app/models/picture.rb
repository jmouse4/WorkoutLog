class Picture < ApplicationRecord
    belongs_to :log
    mount_uploader :image, ImageUploader
    
    validates :image, presence: true
end
