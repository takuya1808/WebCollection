class Collection < ApplicationRecord
  before_save { self.url = url.downcase }
  mount_uproader :image, ImageUploader
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, length: { maximum: 255 },
                  uniqueness:  { case_sensitive: false }
end
