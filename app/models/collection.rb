class Collection < ApplicationRecord
  before_save { self.url = url.downcase }
  mount_uploader :image, ImageUploader
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, length: { maximum: 255 },
                  uniqueness:  { case_sensitive: false }
  validates :image, presence: true
end
