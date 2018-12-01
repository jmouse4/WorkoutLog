class Log < ApplicationRecord
    has_many :pictures
    validates :title, presence: true, length: { minimum: 4 }
    validates :text, presence: true, length: { minimum: 6}
end
