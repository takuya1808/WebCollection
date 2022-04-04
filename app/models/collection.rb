class Collection < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true, length: { maximum: 255 }
end
