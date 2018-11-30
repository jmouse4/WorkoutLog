class Log < ApplicationRecord
    has_many :pictures
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10}
end
