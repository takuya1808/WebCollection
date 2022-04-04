class Collection < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, length: { maximum: 255 }, uniqueness: true
end
